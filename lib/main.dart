import 'package:flutter/material.dart';
import 'package:iti_quiz_app/Screens/TestScreens/general_test.dart';
import 'package:iti_quiz_app/Screens/TestScreens/history_test.dart';
import 'package:iti_quiz_app/Screens/TestScreens/sports_test.dart';
import 'package:iti_quiz_app/Screens/categories_screen.dart';
import 'package:iti_quiz_app/Screens/opening_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/score_screen.dart';
import 'Screens/signup_page.dart';

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
        LoginScreen.id: (context) =>  LoginScreen(),
        OpeningScreen.id: (context) => const OpeningScreen(),
        CategoriesScreen.id:(context) => const CategoriesScreen(),
        SportsTestScreen.id:(context) => const SportsTestScreen(),
        HistoryScreen.id:(context) => const HistoryScreen(),
        GeneralScreen.id:(context) => const GeneralScreen(),
        ScoreScreen.id:(context) => const ScoreScreen(),
        SignUpPage.id:(context) => const SignUpPage(),
      },
    );
  }
}
