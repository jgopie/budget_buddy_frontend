import 'package:budget_buddy_frontend/apptheme.dart';
import 'package:budget_buddy_frontend/dto/account.dto.dart';
import 'package:budget_buddy_frontend/providers/theme_mode.provider.dart';
import 'package:budget_buddy_frontend/screens/account_detail_screen.dart';
import 'package:budget_buddy_frontend/screens/add_account_screen.dart';
import 'package:budget_buddy_frontend/screens/add_transaction_screen.dart';
import 'package:budget_buddy_frontend/screens/home.dart';
import 'package:budget_buddy_frontend/screens/login_screen.dart';
import 'package:budget_buddy_frontend/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => Home(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/account_details',
      builder: (
        context,
        state,
      ) {
        Account acc = state.extra as Account;
        return AccountDetailScreen(account: acc);
      },
    ),
    GoRoute(
      path: '/add_account',
      builder: (context, state) => AddAccountScreen(),
    ),
    GoRoute(
      path: '/add_transaction',
      builder: (context, state) {
        String account_id = state.extra as String;
        return AddTransactionScreen(account_id: account_id);
      },
    ),
  ],
);

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return MaterialApp.router(
      routerConfig: _router,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: theme,
    );
  }
}
