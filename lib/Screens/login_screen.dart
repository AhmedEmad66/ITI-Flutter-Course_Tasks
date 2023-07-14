import 'package:flutter/material.dart';
import 'package:iti_quiz_app/Screens/signup_page.dart';
import 'categories_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  static String id = "LoginScreen";

  final _formKey = GlobalKey<FormState>();

  final RegExp userReg = RegExp(r'^[A-Z].{8,}$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 11, 201, 219),
      body: Stack(
        children: [
          Positioned(
            top: 55,
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
              padding: const EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 2 / 3.3,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              child: Form(
                key: _formKey,
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
                      height: 18,
                    ),
                    // userName
                    TextFormField(
                      cursorColor: const Color.fromARGB(255, 11, 201, 219),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline_outlined,
                          color: Color.fromARGB(255, 11, 201, 219),
                        ),
                        hintText: "Username",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(133, 132, 132, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 11, 201, 219),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Username is required.';
                        }
                        if (value.length < 9) {
                          return 'Username must be at least 9 characters long.';
                        }
                        if (!userReg.hasMatch(value)) {
                          return 'Username must start with a capitalized letter.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
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
                      ],
                    ),
                    // login btn
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 40),
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color.fromARGB(255, 11, 201, 219),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.popAndPushNamed(
                                context, CategoriesScreen.id);
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Touch ID
                    Image.asset(
                      "assets/images/Piometric.png",
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Use Touch ID",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(163, 162, 162, 1),
                      ),
                    ),

                    const Spacer(),
                    // remember me & forget pass
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                                height: 10,
                                child: Checkbox(
                                  value: true,
                                  onChanged: (value) {},
                                  activeColor:
                                      const Color.fromARGB(255, 11, 201, 219),
                                ),
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
                            onTap: () {},
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 11, 201, 219),
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
          ),
        ],
      ),
    );
  }
}
