import asyncio
import json as _json

from uplink import *

BASE_URL = "https://www.reddit.com"


def _format_comment(profile, comment):
    body256 = comment["body"][:256].replace('/("|\r\n|\r|\n)/g', '')
    return {
        "banned_by": comment["banned_by"],
        "no_follow": comment["no_follow"],
        "link_id": comment["link_id"],
        "gilded": comment["gilded"],
        "author": comment["author"],
        "author_verified": profile["verified"],
        "author_comment_karma": profile["comment_karma"],
        "author_link_karma": profile["link_karma"],
        "num_comments": comment["num_comments"] if "num_comments" in comment else 0,
        "created_utc": comment["created_utc"],
        "score": comment["score"],
        "over_18": comment["over_18"],
        "body": body256,
        "downs": comment["downs"],
        "is_submitter": comment["is_submitter"],
        "num_reports": comment["num_reports"],
        "controversiality": comment["controversiality"],
        "quarantine": comment["quarantine"],
        "ups": comment["ups"],
    }


@headers({"Accept": "application/json"})
class RedditAPIConsumer(Consumer):
    @get("/user/{username}/about.json")
    def __get_user(self, username):
        pass

    async def get_user(self, username):
        try:
            user_profile = await self.__get_user(username)

            return user_profile.json()
        except Exception as e:
            print(e)
            return Exception(e)

    @get("/user/{username}/comments.json")
    def __get_user_comments(self, username):
        pass

    async def get_user_comments(self, username):
        try:
            response = await self.__get_user_comments(username)
            response = await response.json()
            comments = response["data"]["children"]

            comments = [comment["data"] for comment in comments]

            return comments
        except Exception as e:
            print(e)
            return Exception(e)

    @get("/r/{subreddit}/comments.json?limit={limit}")
    def __get_subreddit_comments(self, subreddit, limit):
        pass

    async def get_subreddit_comments(self, subreddit, limit):
        try:
            response = await self.__get_subreddit_comments(subreddit, limit)
            response = await response.json()
            comments = response["data"]["children"]

            comments = [comment["data"] for comment in comments]

            async def normalize_comment(comment):
                profile = await self.__get_user(comment["author"])
                profile = await profile.json()
                profile = profile["data"]
                full_comment = _format_comment(profile, comment)

                full_comment["is_bot"] = None
                full_comment["is_troll"] = None
                recent_comments = await self.get_user_recent_comments(profile,
                                                                      comment["link_id"],
                                                                      comment["created_utc"])
                full_comment["recent_comments"] = _json.dumps(recent_comments, separators=(',', ':'))
                return full_comment

            comments = await asyncio.gather(*[normalize_comment(comment) for comment in comments])

            return comments
        except Exception as e:
            print(e)
            return Exception(e)

    @get("/user/{username}/comments.json?limit={limit}")
    def __get_user_recent_comments(self, username, limit):
        pass

    async def get_user_recent_comments(self, profile, link_id, created_utc, limit=20):
        try:
            response = await self.__get_user_recent_comments(profile["name"], 25)
            response = await response.json()
            comments = response["data"]["children"]

            comments = [comment["data"] for comment in comments]

            # find the index of the comment that matches the link_id and created_utc
            previous_to = 0
            for i, comment in enumerate(comments):
                if comment["link_id"] == link_id and comment["created_utc"] == created_utc:
                    previous_to = i
                    break

            # take only those comments between previous_to and limit inclusive
            recent_comments = [_format_comment(profile, comment)
                               for comment in comments[previous_to:previous_to + int(limit)]]
            return recent_comments
        except Exception as e:
            print(e)
            return Exception(e)


reddit_api = RedditAPIConsumer(base_url=BASE_URL, client=AiohttpClient())
