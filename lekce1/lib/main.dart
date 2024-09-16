import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Image.asset('assets/image.png'),
              ),
              Expanded(
                flex: 2,
                child: Image.asset('assets/image.png'),
              ),
              Expanded(
                flex: 1,
                child: Image.asset('assets/image.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
