import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  String hint;
  final TextEditingController controller;

  ReusableTextField({required this.controller, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        color: Colors.black.withOpacity(0.05),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.black38),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
