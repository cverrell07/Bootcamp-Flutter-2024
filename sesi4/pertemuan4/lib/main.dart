import 'package:flutter/material.dart';
import 'package:pertemuan4/models/profile_model.dart';
import 'package:pertemuan4/pages/profile_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // Single Provider
    // ChangeNotifierProvider(
    //   create: (_) => ProfileModel(), 
    //   child: const MyApp(),
    // ),
    
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProfileModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
