import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_entity.freezed.dart';
part 'comment_entity.g.dart';

@freezed
class CommentEntity with _$CommentEntity {
  factory CommentEntity({
    String? author,
    String? body,
    @JsonKey(name: 'link_id') String? linkId,
  }) = _CommentEntity;

  factory CommentEntity.fromJson(Map<String, dynamic> json) =>
      _$CommentEntityFromJson(json);
}
