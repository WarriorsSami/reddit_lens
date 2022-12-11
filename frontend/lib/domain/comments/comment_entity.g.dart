// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentEntity _$$_CommentEntityFromJson(Map<String, dynamic> json) =>
    _$_CommentEntity(
      id: json['id'] as int?,
      bannedBy: json['bannedBy'] as String?,
      noFollow: json['noFollow'] as String?,
      linkId: json['linkId'] as String?,
      gilded: json['gilded'] as String?,
      author: json['author'] as String?,
      authorVerified: json['authorVerified'] as bool?,
      authorCommentKarma: json['authorCommentKarma'] as int?,
      authorLinkKarma: json['authorLinkKarma'] as int?,
      numComments: json['numComments'] as int?,
      createdUtc: json['createdUtc'] == null
          ? null
          : DateTime.parse(json['createdUtc'] as String),
      score: (json['score'] as num?)?.toDouble(),
      over18: json['over18'] as bool?,
      body: json['body'] as String?,
      downs: json['downs'] as int?,
      isSubmitter: json['isSubmitter'] as bool?,
      numReports: json['numReports'] as int?,
      controversiality: (json['controversiality'] as num?)?.toDouble(),
      quarantine: json['quarantine'] as bool?,
      ups: json['ups'] as int?,
    );

Map<String, dynamic> _$$_CommentEntityToJson(_$_CommentEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bannedBy': instance.bannedBy,
      'noFollow': instance.noFollow,
      'linkId': instance.linkId,
      'gilded': instance.gilded,
      'author': instance.author,
      'authorVerified': instance.authorVerified,
      'authorCommentKarma': instance.authorCommentKarma,
      'authorLinkKarma': instance.authorLinkKarma,
      'numComments': instance.numComments,
      'createdUtc': instance.createdUtc?.toIso8601String(),
      'score': instance.score,
      'over18': instance.over18,
      'body': instance.body,
      'downs': instance.downs,
      'isSubmitter': instance.isSubmitter,
      'numReports': instance.numReports,
      'controversiality': instance.controversiality,
      'quarantine': instance.quarantine,
      'ups': instance.ups,
    };
