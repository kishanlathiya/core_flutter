import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'global_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ImagePicker picker = ImagePicker();
  File? imgFile;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.grey.shade200,
          title: Text("Confirmation",
              style: TextStyle(fontWeight: FontWeight.bold)),
          content: Text("Are you sure you want to exit ?"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).pop(true);
                  });
                },
                child: Text("Yes")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, onPrimary: Colors.black),
                onPressed: () {
                  setState(() {
                    Navigator.of(context).pop(false);
                  });
                },
                child: Text("No")),
          ],
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade300,
        body: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              // height: 600,
              // width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Stack(
                      // alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: CircleAvatar(
                            backgroundImage:
                                (imgFile != null) ? FileImage(imgFile!) : null,
                            radius: 60,
                            child: (imgFile != null) ? Text("") : Text("ADD"),
                            backgroundColor: Colors.grey.shade400,
                          ),
                        ),
                        Positioned(
                          top: 80,
                          left: 240,
                          child: FloatingActionButton(
                            onPressed: () async {
                              XFile? image = await picker.pickImage(
                                  source: ImageSource.camera);
                              setState(() {
                                imgFile = File(image!.path);
                                Global.myImage = imgFile;
                              });
                            },
                            mini: true,
                            child: Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: firstNameController,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter your first name";
                        } else if (val.length < 2) {
                          return "Enter valid first name...";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          Global.firstName = val!;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "First Name",
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: lastNameController,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter your last name";
                        } else if (val.length < 2) {
                          return "Enter valid last name...";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          Global.lastName = val!;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Last Name",
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: phoneController,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter your mobile number";
                        } else if (val.length != 10) {
                          return "Enter valid mobile number...";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          Global.phoneNumber = val!;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Mobile Number",
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter your email address";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          Global.emailAddress = val!;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email Address",
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            formKey.currentState!.reset();
                            firstNameController.clear();
                            lastNameController.clear();
                            emailController.clear();
                            phoneController.clear();
                            setState(() {
                              Global.firstName = '';
                              Global.lastName = '';
                              Global.phoneNumber = '';
                              Global.emailAddress = '';
                            });
                          },
                          child: Text("Reset"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              Navigator.of(context).pushNamed('select_category_page');
                            }
                          },
                          child: Text("Save"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
