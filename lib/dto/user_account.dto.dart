import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_account.dto.freezed.dart';
part 'user_account.dto.g.dart';

@freezed
class UserAccount with _$UserAccount {
  const factory UserAccount({
    required String id,
    required DateTime created_at,
    required DateTime updated_at,
    required bool is_admin,
    required String first_name,
    required String last_name,
    required String token,
    required String refresh_token,
  }) = _UserAccount;

  factory UserAccount.fromJson(Map<String, Object?> json) =>
      _$UserAccountFromJson(json);
}

@freezed
class AddUser with _$AddUser {
  const factory AddUser({
    required String email,
    required String first_name,
    required String last_name,
    required String password,
  }) = _AddUser;

  factory AddUser.fromJson(Map<String, Object?> json) =>
      _$AddUserFromJson(json);
}

@freezed
class UserLogin with _$UserLogin {
  const factory UserLogin({
    required String email,
    required String password,
  }) = _UserLogin;
  factory UserLogin.fromJson(Map<String, Object?> json) =>
      _$UserLoginFromJson(json);
}
