import 'package:dars_16/pages/last_page.dart';
import 'package:dars_16/pages/log_in.dart';
import 'package:dars_16/pages/sign_up2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUp1 extends StatefulWidget {
  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController verifyController = TextEditingController();

  String? errorEmail;
  String? errorPassword1;
  String? errorPassword2;
  String? errorName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //bottom buttons container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              height: 180,
              width: double.infinity,
              child: Column(
                children: [
                  //create account button
                  InkWell(
                    onTap: () {
                      String email = emailController.text.trim();
                      String password = passwordController.text.trim();
                      String password2 = verifyController.text.trim();
                      String name = nameController.text.trim();

                      if (password.isEmpty) {
                        errorPassword1 = "Can not be empty password";
                      }
                      if (password2.isEmpty) {
                        errorPassword2 = "Can not be empty password";
                      }
                      if (name.isEmpty) {
                        errorEmail = "Can not be empty email";
                      }
                      if (name.isEmpty) {
                        errorName = "Can not be empty name";
                      }

                      setState(() {});

                      if (!email.contains("@") || email.length < 8) {
                        errorEmail = "email must contain @";
                      } else if (password.length < 8) {
                        errorPassword1 =
                            "password should contain 8 atleast letters";
                      } else if (password2.length < 8) {
                        errorPassword2 =
                            "password hsoul contain 8 atleast letters";
                      } else if (password != password2) {
                        errorPassword2 = "password doesn't match";
                        errorPassword1 = "password doesn't match";
                        setState(() {});
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.grey.shade200,
                            content: Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.grey)),
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.blue,
                                    size: 100,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Your account has active",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                                const Text(
                                  "Congatulations you are success to change your profile",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LastPage(),
                                      ),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .clearSnackBars();
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Ok",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                        );
                      }

                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Continue",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "By continuing you agree to Loana's",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const InkWell(
                            child: Text(
                              "Terms Of Use",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            " & ",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 18,
                            ),
                          ),
                          const InkWell(
                            child: Text(
                              "Privacy Policy",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create your account for your schedule",
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    errorText: errorName,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    hintText: 'Your Name',
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    prefixIcon: Icon(
                      Icons.person_outline_rounded,
                      size: 20,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    errorText: errorEmail,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    hintText: 'name@example.com',
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      size: 20,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    errorText: errorPassword1,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    hintText: 'enter password',
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    prefixIcon: Icon(
                      Icons.key,
                      size: 20,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: verifyController,
                  obscureText: true,
                  decoration: InputDecoration(
                    errorText: errorPassword2,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    hintText: 'verify your password',
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    prefixIcon: Icon(
                      Icons.key,
                      size: 20,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Forget your password?",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You have an account?  ",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogIn(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign In Here",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
