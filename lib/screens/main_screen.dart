import 'package:amazonclone/screens/home_screen.dart';

import './login_page.dart';
import './Sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Authen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            // padding: EdgeInsets.only(top: 100),
            height: 120,
            width: 180,
            child: Image.asset('assets/images/amazon2.png'),
          ),
          SizedBox(
            height: 115,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 40,
            color: Colors.orange.shade300,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginPage(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.orange.shade300),
              ),
              child: Text(
                "Already a customer? Sign in",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 40,
            color: Colors.orange.shade300,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage2()),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.orange.shade300),
              ),
              child: Text(
                "Create an account",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 40,
            color: Colors.orange.shade300,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.orange.shade300),
              ),
              child: Text(
                "Skip Login",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
