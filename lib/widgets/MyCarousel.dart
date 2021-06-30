import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 16, 0, 3),
      child: SizedBox(
        height: 175.0,
        width: double.infinity,
        child: Carousel(
          dotSize: 4.0,
          dotSpacing: 15.0,
          dotColor: Colors.lightGreenAccent,
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.transparent,
          images: [
            Image.asset(
              'assets/images/c2.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/c1.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/c3.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/c4.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/c5.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/c6.jpeg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
