import 'package:flutter/material.dart';
import 'package:navisunpasit/widget/tab.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key key}) : super(key: key);
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => TabBarWG()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'image/logo.png',
              width: 520,
              height: 240,
              // fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            // Text('Navigation Sunpasit',
            //     style: TextStyle(
            //         color: Colors.black, fontSize: 28, fontFamily: 'Itim')),
            // Text(''),
            // Text('Guide you never get lost in the hospital!!',
            //     style: TextStyle(
            //       color: Colors.black,
            //       fontFamily: 'Itim',
            //       fontSize: 18,
            //     )),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
