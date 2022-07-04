import 'package:all_auth/screens/phone_signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/serives.dart';
import '../utils/reusable_button.dart';
import 'anonymous_signin.dart';
import 'email_login.dart';
import 'email_signup.dart';
import 'facebook_signin.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                reButton(
                  text: "Email/Password SignUp",
                  onClick: () {
                    Get.to(EmailSignup());
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                reButton(
                  text: "Email/Password Login",
                  onClick: () {
                    Get.to(EmailLogin());
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                reButton(
                  text: "Phone Sign In",
                  onClick: () {
                    Get.to(PhoneSignIn());
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                reButton(
                  text: "Google Sign In",
                  onClick: () {
                    // FirebaseAuthMethods(FirebaseAuth.instance)
                    //     .loginWithGooogle(context);
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                reButton(
                  text: "Facebook Sign In",
                  onClick: () {
                    Get.to(FacebookSignIn());
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                reButton(
                  text: "Anonymous Sign In",
                  onClick: () {
                    Get.to(AnonymousSignIn());
                  },
                ),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          )),
    );
  }
}
