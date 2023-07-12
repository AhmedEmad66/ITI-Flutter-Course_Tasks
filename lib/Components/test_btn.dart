import 'package:flutter/material.dart';
import 'package:iti_quiz_app/Screens/score_screen.dart';

class TestBtn extends StatelessWidget {
  const TestBtn({
    super.key,
    required this.answer,
    required this.color,
  });
  final String answer;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.popAndPushNamed(context, ScoreScreen.id);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            answer,
            style: const TextStyle(
              fontFamily: "MyFont",
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
