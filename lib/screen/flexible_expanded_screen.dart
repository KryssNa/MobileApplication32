import 'package:flutter/material.dart';
import 'package:simple_interest/common_widget/my_button.dart';
import 'package:simple_interest/common_widget/my_snackbar.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible expanded screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Container(
              // height: 200,
              width: double.infinity,
              color: Colors.yellow,
              child: MyButton(
                  onPressed: () {
                    mySnackBar(
                      context: context,
                      message: "button 1 is pressed",
                    );
                  },
                  text: "1"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              // height: 100,
              width: double.infinity,
              color: Colors.red,
              child: MyButton(
                  onPressed: () {
                    mySnackBar(
                        context: context,
                        message: "button 2 is pressed",
                        color: Colors.red);
                  },
                  text: "2"),
            ),
          ),
        ],
      ),
    );
  }
}
