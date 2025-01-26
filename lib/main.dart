import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cozy Green',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: "Comic", // Set your custom font here
      ),
      home: const HomePage(),
    );
  }
}
