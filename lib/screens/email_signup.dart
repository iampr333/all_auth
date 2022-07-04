import 'package:all_auth/services/serives.dart';
import 'package:all_auth/utils/reusable_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../utils/reusable_text_field.dart';

class EmailSignup extends StatefulWidget {
  const EmailSignup({Key? key}) : super(key: key);

  @override
  State<EmailSignup> createState() => _EmailSignupState();
}

class _EmailSignupState extends State<EmailSignup> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  void signUpUser() {
    FirebaseAuthMethods(FirebaseAuth.instance).signupUserWithEmail(
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
                  "Sign Up",
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
                    text: "Sign Up",
                    onClick: () {
                      signUpUser();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
