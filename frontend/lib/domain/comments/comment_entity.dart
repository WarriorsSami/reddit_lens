import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_lens/domain/comments/user_type.dart';
import 'package:reddit_lens/domain/comments/user_type_converter.dart';

part 'comment_entity.freezed.dart';

part 'comment_entity.g.dart';

@freezed
class CommentEntity with _$CommentEntity {
  factory CommentEntity({
    String? author,
    String? body,
    @JsonKey(name: 'link_id') String? linkId,
    @UserTypeConverter()
    @Default(UserType.normal)
    @JsonKey(name: 'predicted')
        UserType userType,
  }) = _CommentEntity;

  factory CommentEntity.fromJson(Map<String, dynamic> json) =>
      _$CommentEntityFromJson(json);
}
