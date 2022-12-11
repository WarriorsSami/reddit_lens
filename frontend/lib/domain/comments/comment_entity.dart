import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_entity.freezed.dart';
part 'comment_entity.g.dart';

@freezed
class CommentEntity with _$CommentEntity {
  factory CommentEntity({
    int? id,
    String? bannedBy,
    String? noFollow,
    String? linkId,
    String? gilded,
    String? author,
    bool? authorVerified,
    int? authorCommentKarma,
    int? authorLinkKarma,
    int? numComments,
    DateTime? createdUtc,
    double? score,
    bool? over18,
    String? body,
    int? downs,
    bool? isSubmitter,
    int? numReports,
    double? controversiality,
    bool? quarantine,
    int? ups,
  }) = _CommentEntity;

  factory CommentEntity.fromJson(Map<String, dynamic> json) =>
      _$CommentEntityFromJson(json);
}
