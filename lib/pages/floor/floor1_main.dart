import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navisunpasit/pages/home.dart';
import 'package:navisunpasit/pages/testp2.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Floor1MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      //padding: const EdgeInsets.all(32),
      padding: const EdgeInsets.only(right: 32, left: 32, top: 25, bottom: 15),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'แผนที่ชั้น 1',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                Text(
                  'มี 4 ทางเข้า',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          // FavoriteWidget(),
          // _buildButton1(Icons.business_outlined),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(icon: Icon(Icons.business_outlined), onPressed: () {})
            ],
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //_buildButtonColumn(color, Icons.call, 'CALL'),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.call),
                color: color,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        // title: Text("Alert!!"),
                        content: Row(
                          children: [
                            Icon(Icons.call_end),
                            Text("   "),
                            Text(
                              "045-319200",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        backgroundColor: Colors.blueGrey.shade100,
                      );
                    },
                  );
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 2),
                child: Text(
                  'CALL',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: color,
                  ),
                ),
              ),
            ],
          ),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ชั้น 1 อาคาร 50 พรรษา'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, HomePage());
          },
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.blueAccent],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            imagep,
            titleSection,
            //buttonSection,
            text1,
            text2,
            text3,
            text4,
            SizedBox(
              height: 30,
            ),
            textSection1,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Image.asset(
          "image/icon/compass.png",
          height: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        icon: Icon(icon),
        color: color,
        onPressed: () {},
      ),
      Container(
        margin: const EdgeInsets.only(top: 2),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget imagep =
    Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
  InteractiveViewer(
    maxScale: 5,
    minScale: 1,
    child: Image.network(
      'https://scontent.fnak4-1.fna.fbcdn.net/v/t1.6435-9/187363702_863598041178518_2792230537775121274_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=0debeb&_nc_ohc=koymFf1O8vkAX_3PHxE&_nc_ht=scontent.fnak4-1.fna&oh=efd0c4625c3f37f270d9e962911935d6&oe=60D8479C',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    ),
  ),
]);

Widget textSection1 = Container(
  padding: const EdgeInsets.all(30),
  color: Colors.blueGrey[100],
  child: Column(
    children: [
      Text(
        'โรงพยาบาลสรรพสิทธิประสงค์ อุบลราชธานี ชั้น 1 ประกอบด้วยหน่วยงาน ',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      Padding(padding: const EdgeInsets.all(5)),
      Text(
          "ศูนย์อุบัติเหตุ - ฉุกเฉิน ศูนย์ประสานส่งต่อ ศูนย์ประชาสัมพันธ์ แผนกเอกซเรย์ชั้น 1 ศูนย์โทรศัพท์วิทยุ ศูนย์ประชาสัมพันธ์ ศูนย์เปล หน่วยตรวจออร์โธปิดิกส์ ห้องตรวจออร์โธปิดิกส์ ห้องบัตร ห้องตรวจสอบสิทธิบัตรทอง ห้องเผือก ห้องจ่ายยา 1 "),
      // Text("ศูนย์ประชาสัมพันธ์ แผนกเอกซเรย์ชั้น 1            "),
      // Text("ศูนย์โทรศัพท์วิทยุ ศูนย์ประชาสัมพันธ์ ศูนย์เปล      "),
      // Text("หน่วยตรวจออร์โธปิดิกส์ ห้องตรวจออร์โธปิดิกส์      "),
      // Text("ห้องบัตร ห้องตรวจสอบสิทธิบัตรทอง ห้องเผือก      "),
      // Text("ห้องจ่ายยา 1                                    "),
      // // Column(
      //   children: [
      //     Padding(padding: const EdgeInsets.all(5)),
      //     Text("ศูนย์อุบัติเหตุ - ฉุกเฉิน ศูนย์ประสานส่งต่อ"),
      //     Text("ศูนย์ประชาสัมพันธ์ แผนกเอกซเรย์ชั้น 1"),
      //     Text("ศูนย์โทรศัพท์วิทยุ ศูนย์ประชาสัมพันธ์ ศูนย์เปล"),
      //     Text("หน่วยตรวจออร์โธปิดิกส์ ห้องตรวจออร์โธปิดิกส์"),
      //     Text("ห้องบัตร ห้องตรวจสอบสิทธิบัตรทอง ห้องเผือก ห้องจ่ายยา 1 "),
      //     Text("ห้องจ่ายยา 1 "),
      //   ],
      // )
    ],
  ),
);

Widget text1 = Container(
  //padding: const EdgeInsets.all(20),
  padding: const EdgeInsets.only(left: 50),
  //color: Colors.blueGrey[50],
  child: Row(
    children: [
      Text(
        'ทางเข้า 1 ',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      Padding(padding: const EdgeInsets.all(5)),
      Text("มาจากทางฝั่งทางเดินเชื่อมตึก"),
    ],
  ),
);

Widget text2 = Container(
  //padding: const EdgeInsets.all(20),
  padding: const EdgeInsets.only(left: 50),
  //color: Colors.blueGrey[50],
  child: Row(
    children: [
      Text(
        'ทางเข้า 2 ',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      Padding(padding: const EdgeInsets.all(5)),
      Text("ทางเข้าจากฝั่งรถ"),
    ],
  ),
);

Widget text3 = Container(
  //padding: const EdgeInsets.all(20),
  padding: const EdgeInsets.only(left: 50),
  //color: Colors.blueGrey[50],
  child: Row(
    children: [
      Text(
        'ทางเข้า 3 ',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      Padding(padding: const EdgeInsets.all(5)),
      Text("งดใช้ทางเดิน"),
    ],
  ),
);

Widget text4 = Container(
  //padding: const EdgeInsets.all(20),
  padding: const EdgeInsets.only(left: 50),
  //color: Colors.blueGrey[50],
  child: Row(
    children: [
      Text(
        'ทางเข้า 4 ',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      Padding(padding: const EdgeInsets.all(5)),
      Text("มาจากทางลาด"),
    ],
  ),
);
