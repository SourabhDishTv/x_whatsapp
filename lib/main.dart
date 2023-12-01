import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:x_whatsapp/screens/home.dart';

import 'custom/theme_provider.dart';
import 'screens/otp.dart';

void main() {
  runApp(
    const ProviderScope(child: MainApp()),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeChanges = ref.watch(themeProvider);

    return MaterialApp(
      theme: themeChanges.getDefaultTheme(context),
      home: HomeScreen(),
    );
  }
}
