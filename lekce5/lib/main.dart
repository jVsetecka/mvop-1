import 'package:flutter/material.dart';
import 'package:lekce5/bc_data.dart';
import 'package:lekce5/bitcoin_api.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: BitcoinApi.getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingScreen();
          }
          return MainScreen(currencies: snapshot.data?.currencies ?? []);
        },
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  final List<Currency> currencies;
  const MainScreen({super.key, required this.currencies});

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (Currency currency in currencies) {
      children.add(Text(currency.name));
      children.add(Text(currency.rate));
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
