import 'package:flutter/material.dart';
import 'package:navisunpasit/pages/recommend.dart';

class PosterPage extends StatelessWidget {
  final String pid;
  final String pname;
  final String pdetail;
  final String piconLocation;
  final String proomLocation;
  final String pimageLocation;

  PosterPage(
      {Key key,
      @required this.pid,
      @required this.pname,
      @required this.pdetail,
      @required this.piconLocation,
      @required this.proomLocation,
      @required this.pimageLocation})
      : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(pname),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context, RecommendPage());
              },
            ),
            // actions: [
            //   IconButton(
            //     icon: Icon(Icons.notifications_none),
            //     onPressed: () {},
            //   ),
            //   IconButton(
            //     icon: Icon(Icons.search),
            //     onPressed: () {},
            //   )
            // ],

            //backgroundColor
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueGrey, Colors.green],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),

            bottom: TabBar(
              //isScrollable: true,
              //labelColor: Colors.black,
              indicatorColor: Colors.white,
              indicatorWeight: 6,
              //enableFeedback: true,
              tabs: [
                Tab(
                  text: 'โปสเตอร์',
                  //icon: Icon(Icons.home),
                ),
                Tab(text: 'ขั้นตอน'),
              ],
            ),
            elevation: 10,
            titleSpacing: 10,
          ),
          body: TabBarView(
            children: [
              ImageP(
                pimageLocation: pimageLocation,
              ),
              DetailsP(
                pdetail: pdetail,
              ),
            ],
          ),
        ),
      );
}

// Page Image Poster

class ImageP extends StatelessWidget {
  final String pimageLocation;
  ImageP({Key key, @required this.pimageLocation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(
              image: NetworkImage(pimageLocation),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}

// Page Details Poster

class DetailsP extends StatelessWidget {
  final String pdetail;
  DetailsP({Key key, @required this.pdetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(
              image: NetworkImage(pdetail),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: SingleChildScrollView(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: <Widget>[Text(pdetail)],
  //       ),
  //     ),
  //   );
  // }
}
