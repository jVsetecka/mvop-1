import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lekce6/router.dart';

@RoutePage()
class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Screen1'),
          ),
          TextButton(
            onPressed: () {
              context.router.push(const Route2());
            },
            child: const Text('Go to Screen2'),
          ),
        ],
      ),
    );
  }
}
