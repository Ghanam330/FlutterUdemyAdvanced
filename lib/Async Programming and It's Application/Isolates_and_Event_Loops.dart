import 'dart:io';
import 'dart:isolate';

import 'package:flutter/material.dart';
class IsolatesView extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child:TextButton(
        child: Text(
          "Click her",
        ),
        onPressed: (){
          Isolate.spawn(blockApp, 1);
        },
      ) ,
    );
  }
}

// Isolates
blockApp(int secound){
  print("Begin");
  sleep(Duration(seconds: secound));
  print("end");
}
