import 'package:flutter/material.dart';
import 'package:simple_interest/common_widget/my_button.dart';
import 'package:simple_interest/common_widget/my_textfield.dart';

class StudentDetailsScreen extends StatefulWidget {
  const StudentDetailsScreen({super.key});

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  String? firstName;
  String? lastName;
  String? address;
  List<Map<String, String>> studentsList = [];
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(
      height: 8,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              MyTextFormField(
                  onChanged: (value) {
                    setState(() {
                      firstName = value;
                    });
                  },
                  text: "First name"),
              gap,
              MyTextFormField(
                  onChanged: (value) {
                    setState(() {
                      lastName = value;
                    });
                  },
                  text: "Last name"),
              gap,
              MyTextFormField(
                  onChanged: (value) {
                    setState(() {
                      address = value;
                    });
                  },
                  text: "Address"),
              gap,
              SizedBox(
                width: 300,
                height: 35,
                child: MyButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        setState(() {
                          studentsList.add({
                            'fname': firstName!,
                            'lname': lastName!,
                            'address': address!
                          });
                        });
                      }
                    },
                    text: "Save"),
              ),
              gap,
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  // height: 300,
                  // width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: studentsList.length,
                      itemBuilder: (context, index) {
                        final student = studentsList[index];
                        return ListTile(
                          leading: const CircleAvatar(
                            foregroundImage:
                                AssetImage('assets/images/image1.jpg'),
                          ),
                          title:
                              Text("${student['fname']} ${student['lname']}"),
                          subtitle: Text("${student['address']}"),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
