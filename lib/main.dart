import 'package:amazonclone/screens/home_screen.dart';
import 'package:amazonclone/screens/login_page.dart';
import 'package:amazonclone/screens/main_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazone CLone',
      theme: ThemeData(
        primaryIconTheme:
            Theme.of(context).primaryIconTheme.copyWith(color: Colors.black),
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          child: Image.asset(
            'assets/images/amazon2.png',
          ),
        ),
        nextScreen: Authen(),
        splashIconSize: 200,
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
