

import 'package:flutte_udemy/expanded.dart';
import 'package:flutte_udemy/gridView__LinearGradient.dart';
import 'package:flutter/material.dart';

class BottomNavigationExample extends StatefulWidget {

  @override
  _BottomNavigationExampleState createState() => _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int currentIndex = 0;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  List<Widget> screens = [
   ExpandedExample(),
    GridViewExample(),
  ];

  List<String> titles = ['ExpandedExample', ' GridViewExample'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(titles[currentIndex]),
    ),
    body:screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
          items:[
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.category
                ),label: 'part1'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home)
                ,label: 'part2'),
          ],),
    );
  }
}
