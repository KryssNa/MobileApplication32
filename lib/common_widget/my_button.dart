import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            backgroundColor: Colors.yellow),
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ));
  }
}
