import difflib
import pickle
import datetime as dt
from io import StringIO
import pandas as pd
from textblob import TextBlob
import numpy as np
import sklearn
from sklearn import preprocessing

def label_encode(data_frame):
    le = preprocessing.LabelEncoder()

    for column_name in data_frame.columns:
        if data_frame[column_name].dtype == object:
            data_frame[column_name] = le.fit_transform(data_frame[column_name])
        else:
            pass

    return data_frame

def diff_ratio(_a, _b):
    return difflib.SequenceMatcher(a=_a, b=_b).ratio()

def last_30(a, b):
    return pd.to_datetime(a, unit='s') - dt.timedelta(days=30) < pd.to_datetime(b, unit='s')

def calc_stats(comment):
    recent_comments = pd.read_json(StringIO(comment['recent_comments']), dtype={
        "banned_by": str,
        "no_follow": bool,
        "link_id": str,
        "gilded": np.float64,
        "author": str,
        "author_verified": bool,
        "author_comment_karma": np.float64,
        "author_link_karma": np.float64,
        "num_comments": np.float64,
        "created_utc": np.float64,
        "score": np.float64,
        "over_18": bool,
        "body": str,
        "downs": np.float64,
        "is_submitter": bool,
        "num_reports": np.float64,
        "controversiality": np.float64,
        "quarantine": bool,
        "ups": np.float64,
    })
    comment['recent_num_comments'] = len(recent_comments)

    if len(recent_comments) > 0:
        comment['recent_num_last_30_days'] = recent_comments['created_utc'].apply(
            lambda x: last_30(comment['created_utc'], x)).sum()
        comment['recent_avg_no_follow'] = recent_comments['no_follow'].mean()
        comment['recent_avg_gilded'] = recent_comments['gilded'].mean()
        comment['recent_avg_responses'] = recent_comments['num_comments'].mean()
        comment['recent_percent_neg_score'] = recent_comments['score'].apply(lambda x: x < 0).mean() * 100
        comment['recent_avg_score'] = recent_comments['score'].mean()
        comment['recent_min_score'] = recent_comments['score'].min()
        comment['recent_avg_controversiality'] = recent_comments['controversiality'].mean()
        comment['recent_avg_ups'] = recent_comments['ups'].mean()
        diff = recent_comments['body'].str.slice(stop=200).fillna('').apply(
            lambda x: diff_ratio(comment['body'], x))
        comment['recent_avg_diff_ratio'] = diff.mean()
        comment['recent_max_diff_ratio'] = diff.max()
        scores = recent_comments['body'].append(pd.Series(comment['body'])).apply(
            lambda x: TextBlob(x).sentiment.polarity)
        comment['recent_avg_sentiment_polarity'] = scores.mean()
        comment['recent_min_sentiment_polarity'] = scores.min()

    # remove the following fields from comment
    # 'banned_by', 'created_utc', 'is_bot', 'is_troll', 'num_reports', 'recent_comments'

    comment = {k: v for k, v in comment.items() if k not in [
        'banned_by', 'created_utc', 'is_bot',
        'is_troll', 'num_reports', 'recent_comments'
    ]}

    return comment

class RedditLensModel:
    def __init__(self):
        with open('model.pkl', 'rb') as mif:
            self.model = pickle.load(mif)
            mif.close()

    def predict(self, comment):
        comment = calc_stats(comment)
        comment = pd.DataFrame([comment])
        comment = label_encode(comment)
        return self.model.predict(comment)
