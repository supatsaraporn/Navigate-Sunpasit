import 'package:flutter/material.dart';
import 'package:navisunpasit/pages/floor/floor1_main.dart';
import 'package:navisunpasit/pages/floor/floor1_room.dart';

class TabFloor1Main extends StatefulWidget {
  @override
  _TabFloor1MainState createState() => _TabFloor1MainState();
}

class _TabFloor1MainState extends State<TabFloor1Main> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Floor1MainPage(),
    Floor1RoomPage()
  ]; // to store nested tabs

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Floor1MainPage(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        //elevation: 20.0,
        // color: Colors.blueGrey,
        shape: CircularNotchedRectangle(),
        notchMargin: 20,
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
                            Floor1MainPage(); // if user taps on this dashboard tab will be active
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
                            Floor1RoomPage(); // if user taps on this dashboard tab will be active
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
