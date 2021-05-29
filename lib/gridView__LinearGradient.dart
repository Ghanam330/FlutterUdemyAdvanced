import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  Widget info(String title, Color color) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red,
            color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Ahmed'),
      // ),
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            children: [
              info('tilte1', Colors.red),
              info('tilte2', Colors.greenAccent),
              info('tilte3', Colors.grey),
              info('tilte4', Colors.red),
              info('tilte5', Colors.grey),
              info('tilte1', Colors.red),
              info('tilte2', Colors.greenAccent),
              info('tilte3', Colors.grey),
              info('tilte4', Colors.red),
              info('tilte5', Colors.grey),
            ],
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              //  اقصي عرض للعنصر
              childAspectRatio: 3 / 2,
              // معني هذا ان كل نسبه 2 في العرض يقابلها 3 في الارتفاع
              crossAxisSpacing: 20,
              //يكون مسافه 20 في ال crossAxis
              mainAxisSpacing: 20,
              //يكون مسافه 20 ال mainAxis
            ),
          ),
        ),
      ),
    );
  }
}
