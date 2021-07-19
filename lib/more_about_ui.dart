

import 'package:flutter/material.dart';

class MoreUiFlutter extends StatelessWidget {
  const MoreUiFlutter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More Ui'),
        leading: Padding(
          padding: EdgeInsets.all(7.0),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.deepOrangeAccent,
              Colors.pink,
              Colors.deepOrangeAccent,
            ]),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            // child:Text("pink/Amber"),
            child: RaisedButton(
              child: Text("Dialog Title"),
              onPressed: () {
                AlertDialog alert = AlertDialog(
                  title: Text("Dialog Title"),
                  content: Container(
                    height: 150,
                    child: Column(
                      children: [
                        Divider(
                          color: Colors.black,
                        ),
                        Text(
                           "This Is Dialog Text ,Click Outside to pop The Dialog!"
                        ),
                        SizedBox(height: 7,),
                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),

                            ),
                            color: Colors.red,
                            child: Text("Close!"),
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
