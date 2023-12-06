import 'package:flutter/material.dart';
import 'package:tiktok/home.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: const MyApp(),
    home: Home(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold();
}
