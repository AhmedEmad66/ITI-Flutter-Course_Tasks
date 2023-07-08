import 'package:flutter/material.dart';
import 'package:iti_quiz_app/Screens/d3_task1.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});
  static String id = "OpeningScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 201, 219),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/736x/20/0b/b0/200bb02a2d168f3dd59c61ca4cca8bb9.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              "assets/images/Logo.png",
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
                  Navigator.popAndPushNamed(context, D3Task1.id);
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
      ),
    );
  }
}
