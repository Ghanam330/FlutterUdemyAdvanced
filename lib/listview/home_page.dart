import 'package:flutter/material.dart';

import 'listview.dart';

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
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(7.0),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.deepOrangeAccent ,
                  Colors.pink,
                  Colors.deepOrangeAccent,
                ]
            ),
          ),
        ),
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