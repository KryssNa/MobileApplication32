import 'package:flutter/material.dart';
import 'package:simple_interest/model/arithmetic_model.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  ArithmeticModel? arithmeticModel;
  String? group;
  double result = 0;
  double? firstNum;
  double? secondNum;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Widget gap = const SizedBox(
      height: 8,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arithmetic Screen"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    firstNum = double.tryParse(value);
                  });
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter first number:"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter first number!!";
                  }
                  return null;
                },
              ),
              gap,
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    secondNum = double.tryParse(value);
                  });
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter second number:"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter second number!!";
                  }
                  return null;
                },
              ),
              ListTile(
                title: const Text("Add"),
                leading: Radio(
                  value: "add",
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Sub"),
                leading: Radio(
                  value: "sub",
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Mul"),
                leading: Radio(
                  value: "mul",
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Div"),
                leading: Radio(
                  value: "div",
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    arithmeticModel = ArithmeticModel(
                        firstNum: firstNum!, secondNum: secondNum!);
                    switch (group) {
                      case "add":
                        setState(() {
                          result = arithmeticModel!.sum();
                        });
                        break;
                      case "sub":
                        setState(() {
                          result = arithmeticModel!.sub();
                        });
                        break;
                      case "mul":
                        setState(() {
                          result = arithmeticModel!.mul();
                        });
                        break;
                      case "div":
                        setState(() {
                          result = arithmeticModel!.div();
                        });
                        break;
                      default:
                        break;
                    }
                  }
                },
                child: const Text("Calculate"),
              ),
              Text("Result: $result")
            ],
          ),
        ),
      ),
    );
  }
}
