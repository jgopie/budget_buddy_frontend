import 'package:budget_buddy_frontend/dto/user_account.dto.dart';
import 'package:budget_buddy_frontend/network_functions/user_account_functions.dart';
import 'package:budget_buddy_frontend/providers/user_account.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final account_info = ref.watch(userAccountInformationProvider);
    final email_controller = TextEditingController();
    final password_controller = TextEditingController();
    ref.listen(userAccountInformationProvider, (previous, next) {
      if (next != null) {
        context.go('/home');
      }
    });
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
                UserAccount account_info = await login(
                  UserLogin(
                      email: email_controller.text,
                      password: password_controller.text),
                );
                ref
                    .read(userAccountInformationProvider.notifier)
                    .update_info(account_info);
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
