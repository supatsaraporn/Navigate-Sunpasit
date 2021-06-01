import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navisunpasit/pages/home.dart';

class Floor2MainPage extends StatelessWidget {
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
                    'แผนที่ชั้น 2',
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
        title: Text('ชั้น 2 อาคาร 50 พรรษา'),
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
      'https://scontent.fnak4-1.fna.fbcdn.net/v/t1.6435-9/187159054_863598084511847_9061714346913379827_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=0debeb&_nc_ohc=ubTips8k-oYAX-kdReK&_nc_ht=scontent.fnak4-1.fna&oh=329c3c44fabf9abcb4d7b8e8ec44ce4f&oe=60DA7D9A',
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
        'โรงพยาบาลสรรพสิทธิประสงค์ อุบลราชธานี ชั้น 2 ประกอบด้วยหน่วยงาน ',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      Column(
        children: [
          Padding(padding: const EdgeInsets.all(10)),
          Text(
              "หน่วยศัลยกรรม แผนกเอกซเรย์ คลินิกเฉพาะโรคนอกเวลา ห้องจ่ายยา 2 หน่วยตรวจเคมีบำบัด ห้องเจาะเลือด ห้องยื่นบัตร คลินิกเฉพาะโรคนอกเวลา "),
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
