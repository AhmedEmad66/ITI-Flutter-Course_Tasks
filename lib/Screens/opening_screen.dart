import 'package:flutter/material.dart';
import 'package:iti_quiz_app/Screens/login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});
  static String id = "OpeningScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: const Color.fromARGB(255, 11, 201, 219),
      backgroundColor: const Color(0xff252C49),
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            "assets/images/bg.png",
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              Image.asset(
                "assets/images/quizLogo.png",
                width: 170,
                height: 170,
              ),
              const SizedBox(
                height: 20,
              ),
              // Title
              const Text(
                "ITI Quiz App",
                style: TextStyle(
                  fontFamily: "MyFont",
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // Slogan
              const Text(
                "Fun and Simple Quiz App",
                style: TextStyle(
                  fontFamily: "MyFont",
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 223, 227, 227),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              // Get Start BTN
              Container(
                margin: const EdgeInsets.only(top: 80),
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border:
                      Border.all(color: const Color.fromARGB(255, 0, 204, 255)),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, LoginScreen.id);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Get Start",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 251, 251, 251),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
