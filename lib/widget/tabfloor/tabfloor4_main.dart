import 'package:flutter/material.dart';
import 'package:navisunpasit/pages/floor/floor4_main.dart';
import 'package:navisunpasit/pages/floor/floor4_room.dart';

class TabFloor4Main extends StatefulWidget {
  @override
  _TabFloor4MainState createState() => _TabFloor4MainState();
}

class _TabFloor4MainState extends State<TabFloor4Main> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Floor4MainPage(),
    Floor4RoomPage()
  ]; // to store nested tabs

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Floor4MainPage(); // Our first view in viewport

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
                            Floor4MainPage(); // if user taps on this dashboard tab will be active
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
                            Floor4RoomPage(); // if user taps on this dashboard tab will be active
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
