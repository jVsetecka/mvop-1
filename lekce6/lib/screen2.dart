import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lekce6/router.dart';

@RoutePage()
class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Screen2'),
          ),
          TextButton(
            onPressed: () => context.maybePop(),
            child: const Text('Go back'),
          ),
          TextButton(
            onPressed: () {
              context.router.push(const Route3());
            },
            child: const Text('Go to screen 3'),
          ),
        ],
      ),
    );
  }
}
