import 'package:all_auth/services/serives.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils/reusable_button.dart';
import '../utils/reusable_text_field.dart';

class PhoneSignIn extends StatefulWidget {
  const PhoneSignIn({Key? key}) : super(key: key);

  @override
  State<PhoneSignIn> createState() => _PhoneSignInState();
}

class _PhoneSignInState extends State<PhoneSignIn> {
  final _phone = TextEditingController();

  void phoneSignin() {
    FirebaseAuthMethods(FirebaseAuth.instance)
        .loginWithPhone(phoneNumber: _phone.text, context: context);
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
                  "PHONE LOGIN",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                ReusableTextField(
                  hint: "Enter Your Number",
                  controller: _phone,
                ),
                SizedBox(
                  height: 24,
                ),
                reButton(
                    text: "Send OTP",
                    onClick: () {
                      phoneSignin();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
