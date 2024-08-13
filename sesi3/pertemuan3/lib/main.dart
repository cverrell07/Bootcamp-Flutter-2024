import 'package:flutter/material.dart';
import 'package:pertemuan3/pages/container_page.dart';
import 'package:pertemuan3/pages/home_page.dart';
import 'package:pertemuan3/pages/row_column_page.dart';
import 'package:pertemuan3/pages/stateful_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Workshop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/container': (context) => const ContainerPage(),
        '/rowcolumn': (context) => const RowColumnPage(),
        '/stateful': (context) => const StatefulPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
