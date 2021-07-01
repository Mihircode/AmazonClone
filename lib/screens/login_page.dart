import 'package:amazonclone/screens/home_screen.dart';

import './main_screen.dart';
import 'package:flutter/material.dart';

import 'main_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                // padding: EdgeInsets.only(top: 100),
                height: 120,
                width: 180,
                child: Image.asset('assets/images/amazon3.png'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Sign-In.",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    " Already a customer?",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter username or Email",
                          labelText: "Username or Email",
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        validator: (value) {
                          if (value == null) {
                            return "Username cannot be empty";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        validator: (value) {
                          if (value == null) {
                            return "Password Should not be empty";
                          } else if (value.length < 6) {
                            return "Password length is too small";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 40,
                        color: Colors.orange.shade300,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.orange.shade300),
                          ),
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      Text(
                        "By continuing, you agree to Amazon's Condition of Use and Privacy Notice.",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      Text(
                        "Conditions of Use             Privacy Notice            Help",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "© 1996-2021, Amazon.com,inc. or its affiliates",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
