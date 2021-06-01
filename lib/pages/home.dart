import 'package:flutter/material.dart';
import 'package:navisunpasit/widget/top_section.dart';
import 'package:navisunpasit/widget/floor_section.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopSection(),
            BodyFloor(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
