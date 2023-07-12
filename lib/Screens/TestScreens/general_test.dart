import 'package:flutter/material.dart';
import '../../Components/back_arrow.dart';
import '../../Components/test_btn.dart';
import '../../constants.dart';

class GeneralScreen extends StatelessWidget {
  const GeneralScreen({super.key});
  static String id = "GeneralScreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // App Bar
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 131, 131),
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
                "General Test",
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
                "Which system, developed in the early 1960s, allowed a computer’s resources to be shared in rapid succession with multiple users?",
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
                answer: "time-sharing",
                color: Color.fromARGB(255, 3, 131, 131),
              ),
              TestBtn(
                answer: "host-to-host interactions",
                color: Color.fromARGB(255, 3, 131, 131),
              ),
              TestBtn(
                answer: "batch-processing",
                color: Color.fromARGB(255, 3, 131, 131),
              ),
              TestBtn(
                answer: "command-and-control",
                color: Color.fromARGB(255, 3, 131, 131),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
