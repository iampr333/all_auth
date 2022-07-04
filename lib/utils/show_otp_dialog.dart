import 'package:flutter/material.dart';

void showOtpDialog({
  required BuildContext context,
  required TextEditingController textEditingController,
  required VoidCallback onPressed,
}) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text("Enter OTP"),
          content: Column(
            children: [
              TextField(
                controller: textEditingController,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: onPressed,
              child: Text("Done"),
            ),
          ],
        );
      });
}
