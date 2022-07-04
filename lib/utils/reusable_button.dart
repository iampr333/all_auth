import 'package:flutter/material.dart';

class reButton extends StatelessWidget {
  String text;
  final void Function() onClick;

  reButton({required this.text, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: ElevatedButton(
              onPressed: onClick,
              child: Text(
                text.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal),
              )),
        ),
      ),
    );
  }
}
