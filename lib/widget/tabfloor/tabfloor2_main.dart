import 'package:flutter/material.dart';
import 'package:navisunpasit/pages/floor/floor2_main.dart';
import 'package:navisunpasit/pages/floor/floor2_room.dart';

class TabFloor2Main extends StatefulWidget {
  @override
  _TabFloor2MainState createState() => _TabFloor2MainState();
}

class _TabFloor2MainState extends State<TabFloor2Main> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Floor2MainPage(),
    Floor2RoomPage()
  ]; // to store nested tabs

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Floor2MainPage(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        // color: Colors.red,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 180,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Floor2MainPage(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.map_outlined,
                          color:
                              currentTab == 0 ? Colors.blueGrey : Colors.grey,
                        ),
                        Text(
                          'รายละเอียด',
                          style: TextStyle(
                            color:
                                currentTab == 0 ? Colors.blueGrey : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 180,
                    height: 120,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Floor2RoomPage(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.map,
                          color: currentTab == 2 ? Colors.blueGrey : Colors.red,
                        ),
                        Text(
                          'เส้นทาง',
                          style: TextStyle(
                            color:
                                currentTab == 2 ? Colors.blueGrey : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
