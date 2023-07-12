import 'package:flutter/material.dart';
import 'package:iti_quiz_app/Components/back_arrow.dart';

import '../../Components/test_btn.dart';
import '../../constants.dart';

class SportsTestScreen extends StatelessWidget {
  const SportsTestScreen({super.key});
  static String id = "SportsTestScreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // App Bar
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 119, 7),
          leading: const BackArrow(),
          actions: [
            Image.asset(
              kLogoImage,
              width: 50,
              height: 50,
            ),
          ],
          centerTitle: true,
          title: Column(
            children: const [
              Text(
                "Sports Test",
                style: TextStyle(
                  fontFamily: "MyFont",
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "100 %",
                style: TextStyle(
                  fontFamily: "MyFont",
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 80,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "In Australian football, what is the maximum number of players allowed on the field at a time?",
                style: TextStyle(
                  fontFamily: "Ubuntu",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TestBtn(
                answer: "14",
                color: Color.fromARGB(255, 255, 119, 7),
              ),
              TestBtn(
                answer: "28",
                color: Color.fromARGB(255, 255, 119, 7),
              ),
              TestBtn(
                answer: "36",
                color: Color.fromARGB(255, 255, 119, 7),
              ),
              TestBtn(
                answer: "40",
                color: Color.fromARGB(255, 255, 119, 7),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
