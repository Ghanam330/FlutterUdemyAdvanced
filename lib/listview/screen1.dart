
import 'package:flutte_udemy/listview/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'),
      ),
      body: Center(
        child: InkWell(
          child: Text(
            ' Go TO Screen2',
            style: TextStyle(fontSize: 30.0),
          ),
          onTap: () {
            selectScreen(context);
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title:Text(
                ' Go TO Screen2',
                style: TextStyle(fontSize: 30.0),
              ),
              trailing: Icon(Icons.home),
              subtitle: Text('go to screen2'),
              onTap: () {
                selectScreen(context);
              },
            ),
          ],
        ),

      ),
    );
  }

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
        builder: (_) {
      return Screen2("Ahmed");
    }));
  }
}

// ممكن نستخدم pushReplacementNamed  لو عاوزين يبقا زر رجوع في الصفحه لي هيروحها
