import 'package:budget_buddy_frontend/providers/handle_auto_login.dart';
import 'package:budget_buddy_frontend/providers/user_account.provider.dart';
import 'package:budget_buddy_frontend/screens/home.dart';
import 'package:budget_buddy_frontend/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final account_info = ref.watch(userAccountInformationProvider);
    final handleLogin = ref.watch(handleAutoLoginProvider);
    return switch (handleLogin) {
      AsyncError() => LoginScreen(),
      AsyncData() => Home(),
      _ => const Center(
          child: CircularProgressIndicator(),
        )
    };
  }
}
