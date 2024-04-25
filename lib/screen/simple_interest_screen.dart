import 'package:flutter/material.dart';
import 'package:simple_interest/model/simple_interest_model.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  int? principal;
  double? time;
  double? rate;

  SimpleInterestModel? simpleInterestModel;
  final formKey = GlobalKey<FormState>();
  double si = 0;
  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(
      height: 8,
    );
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text(
          "Simple Interest",
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                onChanged: ((value) => principal = int.parse(value)),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  hintText: "Enter principal amount",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter pricipal amount!!";
                  }
                  return null;
                },
              ),
              gap,
              TextFormField(
                onChanged: ((value) => time = double.parse(value)),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter time in yrs",
                  labelText: "Enter time",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter pricipal amount!!";
                  }
                  return null;
                },
              ),
              gap,
              TextFormField(
                onChanged: ((value) => rate = double.parse(value)),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter rate",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter pricipal amount!!";
                  }
                  return null;
                },
              ),
              gap,
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      simpleInterestModel = SimpleInterestModel(
                          principal: principal!, rate: rate!, time: time!);
                      setState(() {
                        si = simpleInterestModel!.simpleInterest();
                      });
                    }
                  },
                  child: const Text("Calulate SI")),
              Text("Simple interest: $si "),
            ],
          ),
        ),
      ),
    );
  }
}
