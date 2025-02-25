import 'package:budget_buddy_frontend/constants.dart';
import 'package:budget_buddy_frontend/dto/user_account.dto.dart';
import 'package:budget_buddy_frontend/network_functions/user_account_functions.dart';
import 'package:budget_buddy_frontend/providers/secure_storage.provider.dart';
import 'package:budget_buddy_frontend/providers/user_account.provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'generated/handle_auto_login.g.dart';

@riverpod
Future<UserAccount> handleAutoLogin(Ref ref) async {
  final secure_storage = ref.watch(secureStorageProvider);
  try {
    final token = await secure_storage.read(key: jwt);
    final stored_email = await secure_storage.read(key: email);
    if (token == null || stored_email == null) {
      return Future.error('Token or Email is null');
    }
    UserAccount account_info = await autoLogin(token, stored_email);
    ref
        .watch(userAccountInformationProvider.notifier)
        .update_info(account_info);
    return account_info;
  } catch (e) {
    return Future.error('Auto login failed: $e');
  }
}
