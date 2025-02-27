import 'package:budget_buddy_frontend/constants.dart';
import 'package:budget_buddy_frontend/dto/auth_info.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/secure_storage.provider.g.dart';

@riverpod
class SecureStorage extends _$SecureStorage {
  @override
  FlutterSecureStorage build() {
    return FlutterSecureStorage();
  }

  Future<AuthInfo> getAuthInfo() async {
    String? token = await state.read(key: jwt);
    String? stored_email = await state.read(key: email);
    if (token == null || stored_email == null) {
      return Future.error('Token or email is null');
    }
    return AuthInfo(token, stored_email);
  }
}
