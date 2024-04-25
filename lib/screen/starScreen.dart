import 'package:flutter/material.dart';

class StarScreen extends StatelessWidget {
  const StarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show star"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        color: Colors.amber,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.star),
            Spacer(),
            Icon(Icons.star),
            Icon(Icons.star),
          ],
        ),
      ),
    );
  }
}
