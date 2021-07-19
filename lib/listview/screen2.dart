

import 'package:flutte_udemy/expanded.dart';
import 'package:flutte_udemy/gridView__LinearGradient.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  String str;

  Screen2(this.str);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(str),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                    Icons.category
                ),
                text:(' ExpandedExample'),
              ),
              Tab(icon: Icon(
                  Icons.category
              ),
                text:('GridExample'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ExpandedExample(),
GridViewExample(),
          ],
        ),
      ),
    );
  }
}
