import 'package:flutter/material.dart';
import 'package:lekce2/text_field_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter += 1;
    });
    print(_counter);
  }

  void _decrement() {
    if (_counter > 0) {
      setState(() {
        _counter -= 1;
      });
    }
    print(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Počítadlo',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF00A19D),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Počet:', style: TextStyle(fontSize: 24)),
            Text(_counter.toString(), style: const TextStyle(fontSize: 42)),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Open route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextFieldScreen()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('increment'),
            heroTag: 'increment',
            onPressed: () => _increment(),
            backgroundColor: const Color(0xFF00A19D),
            child: const Icon(Icons.add, color: Colors.white),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            key: const Key('decrement'),
            heroTag: 'decrement',
            onPressed: () => _decrement(),
            backgroundColor: const Color(0xFF00A19D),
            child: const Icon(Icons.remove, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
