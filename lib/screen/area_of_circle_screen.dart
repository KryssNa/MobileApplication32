import 'package:flutter/material.dart';
import 'package:simple_interest/model/area_of_circle_model.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  double? radius;
  AreaOfCircleModel? areaOfCircle;

  final formKey = GlobalKey<FormState>();
  double area = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text(
          "Area of Circle",
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                onChanged: ((value) => radius = double.parse(value)),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter radius of circle",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter radius of circle!";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      areaOfCircle = AreaOfCircleModel(radius: radius!);
                      setState(() {
                        area = areaOfCircle!.calculateArea();
                      });
                    }
                  },
                  child: const Text("Calulate Area")),
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                    const TextSpan(
                      text: "A",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    TextSpan(text: "rea of circle:$area")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
