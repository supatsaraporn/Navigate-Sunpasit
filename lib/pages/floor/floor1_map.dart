import 'package:flutter/material.dart';
import 'package:navisunpasit/pages/floor/floor1_room.dart';

class MapFloor1 extends StatelessWidget {
  final String pid;
  final String pname;
  final String pstatus;
  final String piconLocation;
  final String pimageLocation1;
  final String pimageLocation2;
  final String pimageLocation3;
  final String pimageLocation4;
  final String proute1;
  final String proute2;
  final String proute3;
  final String proute4;

  MapFloor1({
    Key key,
    @required this.pid,
    @required this.pname,
    @required this.pstatus,
    @required this.piconLocation,
    @required this.pimageLocation1,
    @required this.pimageLocation2,
    @required this.pimageLocation3,
    @required this.pimageLocation4,
    @required this.proute1,
    @required this.proute2,
    @required this.proute3,
    @required this.proute4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("เส้นทาง"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context, Floor1RoomPage());
              },
            ),

            //backgroundColor
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueGrey, Colors.blueAccent],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),

            bottom: TabBar(
              //isScrollable: true,
              //labelColor: Colors.black,
              indicatorColor: Colors.red[50],
              indicatorWeight: 6,
              //enableFeedback: true,
              tabs: [
                Tab(
                  text: 'เส้นทาง1',
                  icon: Icon(Icons.map),
                ),
                Tab(
                  text: 'เส้นทาง2',
                  icon: Icon(Icons.map),
                ),
                // Tab(
                //   text: 'เส้นทาง3',
                //   icon: Icon(Icons.map),
                // ),
                Tab(
                  text: 'เส้นทาง4',
                  icon: Icon(Icons.map),
                ),
              ],
            ),
            elevation: 10,
            titleSpacing: 10,
          ),
          body: TabBarView(
            children: [
              Floor1Map1(
                pimageLocation1: pimageLocation1,
                pname: pname,
                proute1: proute1,
              ),
              Floor1Map2(
                pimageLocation2: pimageLocation2,
                pname: pname,
                proute2: proute2,
              ),
              // Floor1Map3(
              //   pimageLocation3: pimageLocation3,
              //   pname: pname,
              //   proute3: proute3,
              // ),
              Floor1Map4(
                pimageLocation4: pimageLocation4,
                pname: pname,
                proute4: proute4,
              ),
            ],
          ),
        ),
      );
}

// Map route 1

class Floor1Map1 extends StatelessWidget {
  final String pimageLocation1;
  final String pname;
  final String proute1;
  Floor1Map1({
    Key key,
    @required this.pimageLocation1,
    @required this.pname,
    @required this.proute1,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      //color: Colors.blueGrey[100],
      //padding: const EdgeInsets.all(32),
      padding: const EdgeInsets.only(top: 32, bottom: 32, left: 25, right: 30),
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
                    pname,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left: 7)),
                Text(
                  'รายละเอียดเส้นทาง',
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
              IconButton(
                  icon: Icon(Icons.call),
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
                  })
            ],
          ),
        ],
      ),
    );

    Widget textSectionR1 = Container(
      color: Colors.white,
      //padding: const EdgeInsets.all(10),
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 32, left: 30),
      child: Column(
        children: [
          Text(
            'เส้นทางที่ 1 ทางเข้าฝั่งทางเชื่อมตึก',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Column(
            children: [
              //Padding(padding: const EdgeInsets.all(10)),
              Padding(
                  padding: const EdgeInsets.only(
                top: 30,
                bottom: 10,
              )),
              Image.network(proute1),
              //Text(proute1),
              // Text("หน่วยตรวจออร์โธปิดิกส์ ห้องตรวจออร์โธปิดิกส์   ศูนย์เปล "),
              // Text("ห้องบัตร ห้องตรวจสอบสิทธิบัตรทอง ห้องเผือก ห้องจ่ายยา 1 "),
            ],
          )
        ],
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageL1(
              pimageLocation1: pimageLocation1,
            ),
            titleSection,
            textSectionR1,
          ],
        ),
      ),
    );
  }
}

class ImageL1 extends StatelessWidget {
  final String pimageLocation1;
  ImageL1({Key key, @required this.pimageLocation1}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InteractiveViewer(
            maxScale: 5,
            minScale: 1,
            child: Image.network(
              pimageLocation1,
              width: 600,
              height: 240,
              //fit: BoxFit.cover,
            ),
          ),
        ]);
  }
}

// Map route 2

class Floor1Map2 extends StatelessWidget {
  final String pimageLocation2;
  final String pname;
  final String proute2;
  Floor1Map2({
    Key key,
    @required this.pimageLocation2,
    @required this.pname,
    @required this.proute2,
  }) : super(key: key);
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
                    pname,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Text(
                  'รายละเอียดเส้นทาง',
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
              IconButton(
                  icon: Icon(Icons.call),
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
                  })
            ],
          ),
        ],
      ),
    );

    Widget textSectionR2 = Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 32, left: 30),
      child: Column(
        children: [
          Text(
            'เส้นทางที่ 2 ทางเข้าหน้าโรงพยาบาล',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                top: 30,
                bottom: 10,
              )),
              Image.network(proute2),
              // Text("หน่วยตรวจออร์โธปิดิกส์ ห้องตรวจออร์โธปิดิกส์   ศูนย์เปล "),
              // Text("ห้องบัตร ห้องตรวจสอบสิทธิบัตรทอง ห้องเผือก ห้องจ่ายยา 1 "),
            ],
          )
        ],
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageL2(
              pimageLocation2: pimageLocation2,
            ),
            titleSection,
            textSectionR2,
          ],
        ),
      ),
    );
  }
}

class ImageL2 extends StatelessWidget {
  final String pimageLocation2;
  ImageL2({Key key, @required this.pimageLocation2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InteractiveViewer(
            maxScale: 5,
            minScale: 1,
            child: Image.network(
              pimageLocation2,
              width: 600,
              height: 240,
              //fit: BoxFit.cover,
            ),
          ),
        ]);
  }
}

// Map route 3

class Floor1Map3 extends StatelessWidget {
  final String pimageLocation3;
  final String pname;
  final String proute3;
  Floor1Map3({
    Key key,
    @required this.pimageLocation3,
    @required this.pname,
    @required this.proute3,
  }) : super(key: key);
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
                    pname,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Text(
                  'รายละเอียดเส้นทาง',
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
              IconButton(
                  icon: Icon(Icons.call),
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
                  })
            ],
          ),
        ],
      ),
    );

    Widget textSectionR3 = Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 32, left: 30),
      child: Column(
        children: [
          Text(
            'เส้นทางที่ 3 ทางเข้า',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                top: 30,
                bottom: 10,
              )),
              Image.network(proute3),
              // Text("หน่วยตรวจออร์โธปิดิกส์ ห้องตรวจออร์โธปิดิกส์   ศูนย์เปล "),
              // Text("ห้องบัตร ห้องตรวจสอบสิทธิบัตรทอง ห้องเผือก ห้องจ่ายยา 1 "),
            ],
          )
        ],
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageL3(
              pimageLocation3: pimageLocation3,
            ),
            titleSection,
            textSectionR3,
          ],
        ),
      ),
    );
  }
}

class ImageL3 extends StatelessWidget {
  final String pimageLocation3;
  ImageL3({Key key, @required this.pimageLocation3}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InteractiveViewer(
            maxScale: 5,
            minScale: 1,
            child: Image.network(
              pimageLocation3,
              width: 600,
              height: 240,
              //fit: BoxFit.cover,
            ),
          ),
        ]);
  }
}

// Map route 2

class Floor1Map4 extends StatelessWidget {
  final String pimageLocation4;
  final String pname;
  final String proute4;
  Floor1Map4({
    Key key,
    @required this.pimageLocation4,
    @required this.pname,
    @required this.proute4,
  }) : super(key: key);
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
                    pname,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Text(
                  'รายละเอียดเส้นทาง',
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
              IconButton(
                  icon: Icon(Icons.call),
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
                  })
            ],
          ),
        ],
      ),
    );

    Widget textSectionR4 = Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 32, left: 30),
      child: Column(
        children: [
          Text(
            'เส้นทางที่ 4 ทางเข้า',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                top: 30,
                bottom: 10,
              )),
              Image.network(proute4),
              // Text("หน่วยตรวจออร์โธปิดิกส์ ห้องตรวจออร์โธปิดิกส์   ศูนย์เปล "),
              // Text("ห้องบัตร ห้องตรวจสอบสิทธิบัตรทอง ห้องเผือก ห้องจ่ายยา 1 "),
            ],
          )
        ],
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageL4(
              pimageLocation4: pimageLocation4,
            ),
            titleSection,
            textSectionR4,
          ],
        ),
      ),
    );
  }
}

class ImageL4 extends StatelessWidget {
  final String pimageLocation4;
  ImageL4({Key key, @required this.pimageLocation4}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InteractiveViewer(
            maxScale: 5,
            minScale: 1,
            child: Image.network(
              pimageLocation4,
              width: 600,
              height: 240,
              //fit: BoxFit.cover,
            ),
          ),
        ]);
  }
}
