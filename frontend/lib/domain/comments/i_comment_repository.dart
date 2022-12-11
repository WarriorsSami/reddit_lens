import 'package:dartz/dartz.dart';

import '../core/application_exception.dart';
import 'comment_entity.dart';

abstract class ICommentRepository {
  Stream<Either<ApplicationException, CommentEntity>> watch();
}
