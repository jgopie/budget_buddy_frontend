import 'package:budget_buddy_frontend/dto/auth_info.dart';
import 'package:budget_buddy_frontend/dto/user_account.dto.dart';
import 'package:budget_buddy_frontend/network_functions/user_account_functions.dart';
import 'package:budget_buddy_frontend/providers/secure_storage.provider.dart';
import 'package:budget_buddy_frontend/providers/user_account_information.provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'generated/handle_auto_login.g.dart';

@riverpod
Future<UserAccount> handleAutoLogin(Ref ref) async {
  try {
    AuthInfo auth_info;
    try {
      auth_info = await ref.watch(secureStorageProvider.notifier).getAuthInfo();
    } catch (e) {
      return Future.error(e);
    }
    UserAccount account_info =
        await autoLogin(auth_info.token, auth_info.email);
    ref
        .watch(userAccountInformationProvider.notifier)
        .update_info(account_info);
    return account_info;
  } catch (e) {
    return Future.error('Auto login failed: $e');
  }
}
