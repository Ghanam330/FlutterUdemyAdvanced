import 'package:flutte_udemy/on_boarder/main.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MainSplashScreen extends StatefulWidget {
  const MainSplashScreen({Key key}) : super(key: key);

  @override
  _MainSplashScreenState createState() => _MainSplashScreenState();
}

class _MainSplashScreenState extends State<MainSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SplashScreen(
          seconds: 5,
          photoSize: 200,
          loaderColor: Colors.blue,
          image: Image.asset("assent/image/1.svg"),
          navigateAfterSeconds: OnBoarderScreen(),
        ),
      ),
    );
  }
}
