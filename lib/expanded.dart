import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Ahmed'),
      // ),
      body: Container(
        child: Row(
          children: [
            Expanded(
              flex: 5,
                child: Image.network(
                    'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/119897665_1133305553737598_5769543269200593509_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=ODsTmUQFnhgAX-ZhjLO&_nc_ht=scontent.fcai21-2.fna&oh=01d2926e56471427fd64ecad63a15c79&oe=60D7FAC1')),
            Expanded(
              flex: 1, //   عامل زي  width زي في الاندرويد
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: Text('1'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.red,
                child: Text('2'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.greenAccent,
                child: Text('3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
