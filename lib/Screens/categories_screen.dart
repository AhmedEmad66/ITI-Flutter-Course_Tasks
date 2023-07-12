import 'package:flutter/material.dart';
import 'package:iti_quiz_app/Screens/TestScreens/general_test.dart';
import 'package:iti_quiz_app/Screens/TestScreens/history_test.dart';
import '../Components/categories_btn.dart';
import 'TestScreens/sports_test.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  static String id = "CategoriesScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 11, 201, 219),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Sports BTN
            CategoriesBTN(
              title: "Sports",
              color: const Color.fromARGB(255, 255, 119, 7),
              onTap: () {
                Navigator.popAndPushNamed(context, SportsTestScreen.id);
              },
            ),
            // History BTN
            CategoriesBTN(
              title: "History",
              onTap: () {
                Navigator.popAndPushNamed(context, HistoryScreen.id);
              },
              color: Colors.amberAccent,
            ),
            // General BTN
            CategoriesBTN(
              title: "General",
              onTap: () {
                Navigator.popAndPushNamed(context, GeneralScreen.id);
              },
              color: const Color.fromARGB(255, 3, 131, 131),
            ),
          ],
        ),
      ),
    );
  }
}
