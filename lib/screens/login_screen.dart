// ignore_for_file: unused_local_variable

import 'package:budget_buddy_frontend/components/error_dialog.component.dart';
import 'package:budget_buddy_frontend/constants.dart';
import 'package:budget_buddy_frontend/dto/user_account.dto.dart';
import 'package:budget_buddy_frontend/network_functions/user_account_functions.dart';
import 'package:budget_buddy_frontend/providers/secure_storage.provider.dart';
import 'package:budget_buddy_frontend/providers/user_account_information.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account_info = ref.watch(userAccountInformationProvider);
    final secure_storage = ref.watch(secureStorageProvider);
    final email_controller = TextEditingController();
    final password_controller = TextEditingController();
    ref.listen(
      userAccountInformationProvider,
      (previous, next) {
        if (next != null) {
          context.go('/home');
        }
      },
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email_controller,
            ),
            TextField(
              controller: password_controller,
            ),
            TextButton(
              onPressed: () async {
                try {
                  UserAccount account_info = await login(
                    UserLogin(
                      email: email_controller.text,
                      password: password_controller.text,
                    ),
                  );
                  ref.read(userAccountInformationProvider.notifier).update_info(
                        account_info,
                      );
                  await secure_storage.write(
                    key: jwt,
                    value: account_info.token,
                  );
                  await secure_storage.write(
                      key: email, value: email_controller.text);
                } catch (e) {
                  if (context.mounted) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ErrorDialog(error: e, title: 'Login Error');
                      },
                    );
                  }
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
