import 'package:flutte_udemy/bottomnavigation.dart';
import 'package:flutte_udemy/expanded.dart';
import 'package:flutte_udemy/gridView__LinearGradient.dart';
import 'package:flutte_udemy/listview.dart';
import 'package:flutte_udemy/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Color w = Colors.white;
Color b = Colors.black;

final List<Info> list = [
  Info(name: "Ahmed", height: 20, dateTime: DateTime.now()),
  Info(name: "Ahmed1", height: 20, dateTime: DateTime.now()),
  Info(name: "Ahmed2", height: 20, dateTime: DateTime.now()),
  Info(name: "Ahmed2", height: 20, dateTime: DateTime.now()),
  Info(name: "Ahmed2", height: 20, dateTime: DateTime.now()),
  Info(name: "Ahmed2", height: 20, dateTime: DateTime.now()),
  Info(name: "Ahmed2", height: 20, dateTime: DateTime.now()),
];

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
      home:

BottomNavigationExample(),
       // Screen1()
      // GridViewExample(),
      // ExpandedExample(),
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
          style: TextStyle(color: b,),
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount:list.length ,
          itemBuilder:(context,index){
            return Container(
              padding: EdgeInsets.all(4.0),
              child: Card(
                shadowColor: Colors.greenAccent,
                color: Colors.white,
                elevation: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(list[index].name,
                    style: TextStyle(color: w,fontSize: 35),),
                    Text("${list[index].height}",
                      style: TextStyle(color: w,fontSize: 35),),
                    Text("${list[index].dateTime}",
                      style: TextStyle(color: w,fontSize: 35),),
                  ],
                ),
              ),
            );
          },


        ),
      ),
    );
  }
}
