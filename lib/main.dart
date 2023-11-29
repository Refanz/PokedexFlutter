import 'package:flutter/material.dart';
import 'package:pokeverse/pages/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokeverse',
      theme: ThemeData(),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

