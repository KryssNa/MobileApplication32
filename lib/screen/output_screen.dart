import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  const OutputScreen({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Output screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Hello world $index",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
