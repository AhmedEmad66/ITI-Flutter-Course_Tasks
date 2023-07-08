import 'package:flutter/material.dart';
import 'package:iti_quiz_app/Screens/opening_screen.dart';
import 'Screens/d3_task1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OpeningScreen.id,
      routes: {
        D3Task1.id: (context) => const D3Task1(),
        OpeningScreen.id: (context) => const OpeningScreen(),
      },
    );
  }
}
