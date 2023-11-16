import 'package:business_app/config/router/app_router.dart';
import 'package:business_app/config/theme/app_theme.dart';
import 'package:business_app/presentation/providers/state_providers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(
  const ProviderScope(
    child: MyApp()
  )
);

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleDarkMode = ref.watch(isDarkModeProvider);
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      
      title: 'Material App',
      theme: AppTheme(isDarkMode: toggleDarkMode).getTheme(),
      
    );
  }
}