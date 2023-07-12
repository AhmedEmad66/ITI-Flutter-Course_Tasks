import 'package:flutter/material.dart';
import '../../Components/back_arrow.dart';
import '../../Components/test_btn.dart';
import '../../constants.dart';
import '../score_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});
  static String id = "HistoryScreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // App Bar
        appBar: AppBar(
          // BackGround Color
          backgroundColor: Colors.amberAccent,
          // Left Icon
          leading: const BackArrow(),
          // Right Icon
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
                "History Test",
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
                "World War II started when Germany invaded which country?",
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
                answer: "Belgium",
                color: Colors.amberAccent,
              ),
              TestBtn(
                answer: "Great Britain",
                color: Colors.amberAccent,
              ),
              TestBtn(
                answer: "France",
                color: Colors.amberAccent,
              ),
              TestBtn(
                answer: "Poland",
                color: Colors.amberAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
