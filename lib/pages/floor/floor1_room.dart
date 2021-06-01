import 'package:flutter/material.dart';
import 'package:navisunpasit/pages/poster.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:navisunpasit/pages/home.dart';

import 'floor1_map.dart';

class Floor1RoomPage extends StatefulWidget {
  @override
  _Floor1RoomPageState createState() => _Floor1RoomPageState();
}

class _Floor1RoomPageState extends State<Floor1RoomPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("หน่วยงาน"),
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
      body: StreamBuilder(
        stream: Firestore.instance.collection("floor1").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Column(
                children: <Widget>[
                  Text(""),
                  CircularProgressIndicator(),
                  Text("กำลังโหลด...."),
                ],
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blueGrey[100],
                  elevation: 5.0,
                  child: Container(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MapFloor1(
                                      pid: snapshot
                                          .data.documents[index].documentID,
                                      pname: snapshot
                                          .data.documents[index].data["name"],
                                      pstatus: snapshot
                                          .data.documents[index].data["status"],
                                      piconLocation: snapshot
                                          .data
                                          .documents[index]
                                          .data["iconLocation"],
                                      pimageLocation1: snapshot
                                          .data
                                          .documents[index]
                                          .data["imageLocation1"],
                                      pimageLocation2: snapshot
                                          .data
                                          .documents[index]
                                          .data["imageLocation2"],
                                      pimageLocation3: snapshot
                                          .data
                                          .documents[index]
                                          .data["imageLocation3"],
                                      pimageLocation4: snapshot
                                          .data
                                          .documents[index]
                                          .data["imageLocation4"],
                                      proute1: snapshot
                                          .data.documents[index].data["route1"],
                                      proute2: snapshot
                                          .data.documents[index].data["route2"],
                                      proute3: snapshot
                                          .data.documents[index].data["route3"],
                                      proute4: snapshot
                                          .data.documents[index].data["route4"],
                                    )));
                      },
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        radius: 30,
                        child: FittedBox(
                          child: Image(
                            image: AssetImage(snapshot
                                .data.documents[index].data["iconLocation"]),
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      title: Text(snapshot.data.documents[index].data["name"]),
                      subtitle: Row(
                        children: [
                          Icon(Icons.access_time),
                          Text(" "),
                          Text(snapshot.data.documents[index].data["status"])
                        ],
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                );
                //);
              },
            );
          }
        },
      ),
    );
  }
}
