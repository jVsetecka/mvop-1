import 'package:flutter/material.dart';
import 'package:lekce6/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      title: 'Navigation',
      routerConfig: appRouter.config(),
    );
  }
}
