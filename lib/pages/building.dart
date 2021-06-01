import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:navisunpasit/widget/sidebar.dart';
//import 'package:form_field_validator/form_field_validator.dart';

class Building extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('แผนผังอาคาร'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.green],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
      ),
      body: St(),

      // SingleChildScrollView(
      //   child: Column(
      //     children: <Widget>[
      //       ImageP(),
      //       BodyTop(),
      //       Top(),
      //       BodyBottom(),
      //       Testkaa(),
      //       BodyTop(),
      //       SizedBox(
      //         height: 25.0,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   icon: Icon(Icons.account_circle),
      //   label: Text("ทิศ"),
      // ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {},
        tooltip: 'Increment',
        child: Image.asset(
          "image/icon/compass.png",
          height: 40,
        ),
      ),
    );
  }
}

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InteractiveViewer(
            maxScale: 5,
            minScale: 1,
            child: Image(
              image: AssetImage('image/bigmap.png'),
              fit: BoxFit.cover,
            ),
          ),
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: IconButton(
          //     onPressed: () {},
          //     icon: Icon(Icons.home),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class BodyBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(top: 30, bottom: 30, left: 8, right: 35),
            height: 10,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Colors.blueGrey,
            ),
          )
        ],
      ),
    );
  }
}

class BodyTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(top: 30, bottom: 30, left: 8, right: 35),
            height: 10,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.blueGrey,
            ),
          )
        ],
      ),
    );
  }
}

class Testna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue]),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}

class Testkaa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 175.0,
          width: 580,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xFF004D40),
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black45,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0)
              ]),
        ),
        Container(
          alignment: FractionalOffset.centerRight,
          child: Image(
            image: AssetImage(
              'image/hospital_building.png',
            ),
            height: 180,
            width: 190,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'อาคาร ๕๐ พรรษา',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'มหาวชิราลงกรณ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                height: 40.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF64FFDA),
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'ดูผังอาคาร',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          alignment: PlaceholderAlignment.middle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class St extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 180,
          width: double.infinity,
          child: Carousel(
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotColor: Colors.lightBlueAccent,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.transparent,
            dotVerticalPadding: 5.0,
            dotPosition: DotPosition.topRight,
            images: [
              Image.asset(
                'image/sunp1.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset('image/homepageImage.png', fit: BoxFit.cover),
              Image.asset('image/sunp.jpg', fit: BoxFit.cover),
            ],
          ),
        ),
        SizedBox(
          height: 10,
          child: BodyBottom(),
        ),
        SizedBox(
            height: 28,
            child: Column(
              children: [
                Text(
                  'แผนผังอาคารโรงพยาบาลสรรพสิทธิประสงค์',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            )),
        SizedBox(
          height: 8,
          // child: Text(
          //   'โรงพยาบาลสรรพสิทธิประสงค์',
          //   style: TextStyle(
          //       color: Colors.grey[500],
          //       fontWeight: FontWeight.bold,
          //       fontSize: 15),
          // ),
        ),
        BodyTop(),
        Top(),
        BodyBottom()
      ],
    );
  }
}
