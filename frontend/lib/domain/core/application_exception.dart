import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_exception.freezed.dart';

@freezed
class ApplicationException with _$ApplicationException {
  const factory ApplicationException.infrastructureException(String message) =
      _InfrastructureException;
  const factory ApplicationException.httpFailure(String message, int code) =
      _HttpFailure;
}
