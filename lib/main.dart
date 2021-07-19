

import 'package:flutte_udemy/on_boarder/main.dart';
import 'package:flutte_udemy/on_boarder/splach_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




void main()  {
  // runApp(MainSplashScreen());
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 20.0
            )
          ),
        ),
      ),
      home: OnBoarderScreen(),

      //MoreUiFlutter(),

// BottomNavigationExample(),
       // Screen1()
      // GridViewExample(),
      // ExpandedExample(),
    );
  }
}


