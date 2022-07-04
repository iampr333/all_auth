import 'package:all_auth/services/serives.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/reusable_button.dart';
import '../utils/reusable_text_field.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({Key? key}) : super(key: key);

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  void loginUser() {
    FirebaseAuthMethods(FirebaseAuth.instance).loginWithEmail(
        emailAddress: _email.text, password: _password.text, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Log-In",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                ReusableTextField(
                  hint: "Enter Your Email",
                  controller: _email,
                ),
                SizedBox(
                  height: 16,
                ),
                ReusableTextField(
                  hint: "Enter Your Password",
                  controller: _password,
                ),
                SizedBox(
                  height: 24,
                ),
                reButton(
                    text: "Login",
                    onClick: () {
                      loginUser();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
