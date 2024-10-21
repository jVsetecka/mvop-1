import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Screen3'),
          ),
          TextButton(
            onPressed: () => context.maybePop(),
            child: const Text('Go back'),
          ),
          TextButton(
            onPressed: () {
              context.router
                  .popUntil((route) => route.settings.name == 'Route1');
            },
            child: const Text('Go to Screen1'),
          ),
        ],
      ),
    );
  }
}
