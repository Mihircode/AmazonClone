import 'package:flutter/material.dart';

class MySearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 27,
      color: Color.fromARGB(255, 141, 221, 220),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 70,
          ),
          Icon(Icons.search, color: Colors.black),
          Expanded(
            child: TextField(
              // textAlign: TextAlign.center,
              decoration: InputDecoration.collapsed(
                fillColor: Colors.white,
                filled: true,
                hintText: ' Search',
              ),
              onChanged: (value) {},
            ),
          ),
          Icon(Icons.camera_alt_outlined, color: Colors.black),
          SizedBox(
            width: 80,
          ),
        ],
      ),
    );
  }
}
