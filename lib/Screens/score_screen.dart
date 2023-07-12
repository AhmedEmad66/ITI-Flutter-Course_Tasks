import 'package:flutter/material.dart';
import 'package:iti_quiz_app/Screens/opening_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});
  static String id = "ScoreScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 11, 201, 219),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "congratulations Emad",
              style: TextStyle(
                fontFamily: "MyFont",
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 80,
              width: double.infinity,
            ),
            Container(
              width: 200,
              height: 110,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 6, 134, 146),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Your Score :",
                    style: TextStyle(
                      fontFamily: "MyFont",
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "90 %",
                    style: TextStyle(
                      fontFamily: "MyFont",
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Text(
              "Want to Play again?",
              style: TextStyle(
                fontFamily: "MyFont",
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, OpeningScreen.id);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 6, 134, 146),
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)))),
              child: const Text(
                "Reset",
                style: TextStyle(
                  fontFamily: "MyFont",
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
