import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 82, 122),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile Picture
          const CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/ProfilePic.jpg",
            ),
            radius: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          // Name
          const Text(
            "Ahmed Emad Hegazy",
            style: TextStyle(
              fontFamily: "MyFont",
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 0, 195, 159),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Age
          const Text(
            "22 Years Old",
            style: TextStyle(
              fontFamily: "MyFont",
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 0, 195, 159),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Career
          const Text(
            "Flutter Developer",
            style: TextStyle(
              fontFamily: "MyFont",
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 0, 195, 159),
            ),
          ),
          // See More Info BTN
          Container(
            margin: const EdgeInsets.only(top: 40),
            width: 120,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.grey),
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  "See More...",
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
    );
  }
}
