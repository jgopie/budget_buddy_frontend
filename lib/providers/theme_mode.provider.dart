import 'package:budget_buddy_frontend/constants.dart';
import 'package:budget_buddy_frontend/providers/secure_storage.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/theme_mode.provider.g.dart';

@riverpod
class Theme extends _$Theme {
  @override
  ThemeMode build() {
    return ThemeMode.light;
  }

  void toggle() async {
    if (state == ThemeMode.light) {
      state = ThemeMode.dark;
      await saveTheme(darkTheme);
    } else {
      state = ThemeMode.light;
      await saveTheme(lightTheme);
    }
  }

  Future<void> loadTheme() async {
    FlutterSecureStorage secure_storage = ref.watch(secureStorageProvider);
    String? saved_theme = await secure_storage.read(key: theme);
    if (saved_theme == darkTheme) {
      state = ThemeMode.dark;
    } else {
      state = ThemeMode.light;
    }
  }

  Future<void> saveTheme(String themeString) async {
    FlutterSecureStorage secureStorage = ref.watch(secureStorageProvider);
    await secureStorage.write(key: theme, value: themeString);
  }
}
