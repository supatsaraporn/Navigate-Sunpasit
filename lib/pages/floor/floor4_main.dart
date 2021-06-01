import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navisunpasit/pages/home.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Floor4MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
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
                    'แผนที่ชั้น 4',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                Text(
                  'มี 2 ทางเข้า',
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
        title: Text('ชั้น 4 อาคาร 50 พรรษา'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, HomePage());
          },
        ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            imagep,
            titleSection,
            //buttonSection,
            text1,
            text2,
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
      'https://scontent.fnak4-1.fna.fbcdn.net/v/t1.6435-9/186543000_863598217845167_8477607751111769249_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=0debeb&_nc_ohc=E92xmHFcH9cAX-2yST4&_nc_ht=scontent.fnak4-1.fna&oh=ca7cfc682c34e29a49fa5f4e9bd99b9f&oe=60D7034A',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    ),
  ),
]);

Widget textSection1 = Container(
  padding: const EdgeInsets.all(30),
  color: Colors.green[50],
  child: Column(
    children: [
      Text(
        'โรงพยาบาลสรรพสิทธิประสงค์ อุบลราชธานี ชั้น 4 ประกอบด้วยหน่วยงาน ',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      Column(
        children: [
          Padding(padding: const EdgeInsets.all(10)),
          Text(
              "กลุ่มงานทันตกรรม หน่วยตรวจหู คอ จมูก ห้องตรวจจักษุ หน่วยแก้ไขการพูดและการได้ยิน ห้องยื่นบัตรหน่วยแก้ไขการพูดและการได้ยิน หน่วยจิตเวชและยาเสพติด "),
          // Text("หน่วยตรวจออร์โธปิดิกส์ ห้องตรวจออร์โธปิดิกส์   ศูนย์เปล "),
          // Text("ห้องบัตร ห้องตรวจสอบสิทธิบัตรทอง ห้องเผือก ห้องจ่ายยา 1 "),
        ],
      )
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
      Text("บันได / ลิฟท์ 1,2"),
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
      Text("บันได / ลิฟท์ 3,4"),
    ],
  ),
);
