import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(
      width: 8,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout screen"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [Icon(Icons.call), Text("Call")],
                ),
                gap,
                Column(
                  children: [Icon(Icons.route), Text("Route")],
                ),
                gap,
                Column(
                  children: [Icon(Icons.share), Text("Share")],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
