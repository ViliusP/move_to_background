import 'package:flutter/material.dart';
import 'package:move_to_background/move_to_background.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_downward),
          onPressed: () {
            MoveToBackground.moveTaskToBack();
          },
        ),
        appBar: AppBar(
          title: const Text('MoveToBackground Example'),
        ),
        body: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) async {
            MoveToBackground.moveTaskToBack();
            return;
          },
          child: const Center(
            child: Text('Press the floating action button'),
          ),
        ),
      ),
    );
  }
}
