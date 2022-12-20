// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentEntity _$$_CommentEntityFromJson(Map<String, dynamic> json) =>
    _$_CommentEntity(
      author: json['author'] as String?,
      body: json['body'] as String?,
      linkId: json['link_id'] as String?,
      userType: json['predicted'] == null
          ? UserType.normal
          : const UserTypeConverter().fromJson(json['predicted'] as String),
    );

Map<String, dynamic> _$$_CommentEntityToJson(_$_CommentEntity instance) =>
    <String, dynamic>{
      'author': instance.author,
      'body': instance.body,
      'link_id': instance.linkId,
      'predicted': const UserTypeConverter().toJson(instance.userType),
    };
