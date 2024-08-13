import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({super.key});

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  int _counter = 0;

  void _increment(){
    setState((){
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Button Pressed $_counter times'),
            ElevatedButton(
              onPressed: _increment,
              child: const Text('Increment the counter!'),
            )
          ],
        )
      )
    );
  }
}