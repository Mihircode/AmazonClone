import 'package:amazonclone/screens/cart_screen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize = Size.fromHeight(56); // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 141, 221, 220),
      title: Container(
        child: Image(
          image: AssetImage('assets/images/amazon_logo.jpg'),
          height: 25.0,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: InkResponse(
            onTap: () => print('mic'),
            child: Icon(
              Icons.mic,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ),
        Stack(
          children: [
            Positioned(
              child: Padding(
                padding: EdgeInsets.only(top: 12.0, right: 20.0),
                child: InkResponse(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CartScreen(),
                    ),
                  ),
                  child: Icon(
                    Icons.shopping_basket,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 32,
              right: 20,
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Text(
                    '5',
                    textScaleFactor: 0.8,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
