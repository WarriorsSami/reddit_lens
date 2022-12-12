import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_failure.freezed.dart';

@freezed
class ApplicationFailure with _$ApplicationFailure {
  const factory ApplicationFailure.infrastructureFailure(String message) =
      _InfrastructureException;
  const factory ApplicationFailure.httpFailure(String message, int code) =
      _HttpFailure;
}
