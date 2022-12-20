import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_lens/domain/comments/user_type.dart';

class UserTypeConverter implements JsonConverter<UserType, String> {
  const UserTypeConverter();

  @override
  UserType fromJson(String json) {
    return UserType.values.firstWhere(
      (e) => e.toString() == json,
      orElse: () => UserType.normal,
    );
  }

  @override
  String toJson(UserType object) {
    return object.toString();
  }
}
