import 'package:flutter/material.dart';
import 'package:navisunpasit/pages/floor/floor3_main.dart';
import 'package:navisunpasit/pages/floor/floor3_room.dart';

class TabFloor3Main extends StatefulWidget {
  @override
  _TabFloor3MainState createState() => _TabFloor3MainState();
}

class _TabFloor3MainState extends State<TabFloor3Main> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Floor3MainPage(),
    Floor3RoomPage()
  ]; // to store nested tabs

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Floor3MainPage(); // Our first view in viewport

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
                            Floor3MainPage(); // if user taps on this dashboard tab will be active
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
                            Floor3RoomPage(); // if user taps on this dashboard tab will be active
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
