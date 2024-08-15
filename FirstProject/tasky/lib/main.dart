import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasky/pages/task_list_page.dart';
import 'package:tasky/providers/task_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskProvider(), 
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasky',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const TaskListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}