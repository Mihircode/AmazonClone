import 'package:amazonclone/screens/home_screen.dart';
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
        splash: Image.asset(
          'assets/images/amazonbanner.jpg',
        ),
        nextScreen: HomeScreen(),
        splashIconSize: 200,
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
