import 'package:flutter/material.dart';

mySnackBar(
    {required String message, required BuildContext context, Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: color ?? Colors.green,
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.fixed,
    ),
  );
}
