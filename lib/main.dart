import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Color w = Colors.white;
Color b = Colors.black;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter App ',
          style: TextStyle(color: b),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              'text1',
              style: TextStyle(
                  fontSize: 20
                  , color: w
              ),
            )
          ],
        ),
      ),
    );
  }
}
