import 'package:flutter/material.dart';
import 'package:simple_interest/common_widget/listtile_widget.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List Tile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 100; i++) ...{
              if (i % 2 == 1) ...{
                ListTileWidget(
                  index: i,
                ),
              },
            }
          ],
        ),
      ),
    );
  }
}
