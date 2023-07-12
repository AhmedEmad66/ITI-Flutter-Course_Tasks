import 'package:flutter/material.dart';
import 'package:iti_quiz_app/Screens/signup_page.dart';
import 'categories_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String id = "LoginScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 11, 201, 219),
      body: Stack(
        children: [
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo Image
                Image.asset(
                  "assets/images/quizLogo.png",
                  width: 80,
                  height: 80,
                ),
                // description Image
                Image.asset(
                  "assets/images/testing.png",
                  width: 200,
                  height: 200,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 2 / 3.2,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: "MyFont",
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // userName
                  Container(
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const TextField(
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        hintText: "Username",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(133, 132, 132, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          top: 9,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // password textfield
                  Container(
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const TextField(
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outlined),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(133, 132, 132, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          top: 9,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "New to Quiz? ",
                        style: TextStyle(
                          color: Color.fromRGBO(133, 132, 132, 1),
                        ),
                      ),
                      // register btn
                      GestureDetector(
                        onTap: () {
                          Navigator.popAndPushNamed(context, SignUpPage.id);
                        },
                        child: const Text(
                          "Register?",
                          style: TextStyle(
                            color: Color.fromARGB(255, 11, 201, 219),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  // login btn
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 11, 201, 219),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, CategoriesScreen.id);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/Piometric.png",
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Use Touch ID",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(163, 162, 162, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                              height: 10,
                              child:
                                  Checkbox(value: false, onChanged: (value) {}),
                              // IconButton(
                              //   onPressed: () {},
                              //   padding: EdgeInsets.zero,
                              //   icon: const Icon(
                              //     Icons.check_box_outlined,
                              //     color: Color(0xFF7B7B7B),
                              //     size: 15,
                              //   ),
                              // ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Remember Me",
                              style: TextStyle(
                                color: Color.fromRGBO(133, 132, 132, 1),
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Color.fromRGBO(133, 132, 132, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
