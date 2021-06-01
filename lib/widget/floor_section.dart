import 'package:flutter/material.dart';
//import 'package:navisunpasit/pages/map.dart';
import 'package:navisunpasit/widget/tabfloor/tabfloor1_main.dart';
import 'package:navisunpasit/widget/tabfloor/tabfloor2_main.dart';
import 'package:navisunpasit/widget/tabfloor/tabfloor3_main.dart';
import 'package:navisunpasit/widget/tabfloor/tabfloor4_main.dart';

class BodyFloor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "แผนผังชั้น",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Itim'),
                ),
                FlatButton(
                  onPressed: () {
                    // Navigator.pushReplacement(
                    //     context, MaterialPageRoute(builder: (_) => MapPage()));
                  },
                  child: Text(
                    "1 - 4",
                    style: TextStyle(fontFamily: 'Itim'),
                  ),
                  splashColor: Colors.transparent,
                )
              ],
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Floor1(),
          SizedBox(
            height: 10,
          ),
          Floor2(),
          SizedBox(
            height: 10,
          ),
          Floor3(),
          SizedBox(
            height: 10,
          ),
          Floor4(),
        ],
      ),
    );
  }
}

///  Floor 1 for HomePage

class Floor1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.18,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("image/icon/floor1.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                  //color: Colors.white,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "ชั้น 1 อาคาร ๕๐ ",
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Itim'),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("ห้องบัตร แผนกเอกซเรย์ "),
                      Text("ห้องตรวจสอบสิทธิบัตรทอง"),
                      Text("ห้องจ่ายยา 1 ..."),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(""),
                          GestureDetector(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                                child: Text(
                                  "ดูรายละเอียด",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.red,
                                      fontFamily: 'Itim'),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => TabFloor1Main()));
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        margin: EdgeInsets.all(0.0),
        elevation: 0.0,
        color: Colors.blueGrey.withOpacity(0.3),
      ),
    );
  }
}

///  Floor 2 for HomePage

class Floor2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.18,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("image/icon/floor2.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                  //color: Colors.red,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "ชั้น 2 อาคาร ๕๐ ",
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Itim'),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("หน่วยศัลยกรรม แผนกเอกซเรย์"),
                      Text("คลินิกเฉพาะโรคนอกเวลา ห้องจ่ายยา"),
                      Text("หน่วยตรวจเคมีบำบัด ..."),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(""),
                          GestureDetector(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                                child: Text(
                                  "ดูรายละเอียด",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.red,
                                      fontFamily: 'Itim'),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => TabFloor2Main()));
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        margin: EdgeInsets.all(0.0),
        elevation: 0.0,
        color: Colors.greenAccent.withOpacity(0.3),
      ),
    );
  }
}

///  Floor 3 for HomePage

class Floor3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.18,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("image/hospital_building.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                  //color: Colors.red,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "ชั้น 3 อาคาร ๕๐ ",
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Itim'),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("หน่วยตรวจสูติ-นารีเวชกรรม"),
                      Text("ห้องอัลตราซาวด์ ห้องตรวจเด็ก"),
                      Text("ห้องจ่ายยา 3 ..."),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(""),
                          GestureDetector(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                                child: Text(
                                  "ดูรายละเอียด",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.red,
                                      fontFamily: 'Itim'),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => TabFloor3Main()));
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        margin: EdgeInsets.all(0.0),
        elevation: 0.0,
        color: Colors.blue[200].withOpacity(0.3),
      ),
    );
  }
}

///  Floor 4 for HomePage

class Floor4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.18,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("image/icon/floor1.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                  //color: Colors.red,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "ชั้น 4 อาคาร ๕๐ ",
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Itim'),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("กลุ่มงานทันตกรรม ห้องตรวจจักษุ "),
                      Text("หน่วยแก้ไขการพูดและการได้ยิน"),
                      Text("หน่วยจิตเวชและยาเสพติด ..."),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(""),
                          GestureDetector(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                                child: Text(
                                  "ดูรายละเอียด",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.red,
                                      fontFamily: 'Itim'),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => TabFloor4Main()));
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        margin: EdgeInsets.all(0.0),
        elevation: 0.0,
        color: Colors.green[200].withOpacity(0.3),
      ),
    );
  }
}
