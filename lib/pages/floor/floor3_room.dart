import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'floor3_map.dart';

class Floor3RoomPage extends StatefulWidget {
  @override
  _Floor3RoomPageState createState() => _Floor3RoomPageState();
}

class _Floor3RoomPageState extends State<Floor3RoomPage> {
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
              colors: [Colors.blue[200], Colors.blueGrey],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection("floor3").snapshots(),
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
                  color: Colors.blue[50],
                  elevation: 5.0,
                  child: Container(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MapFloor3(
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
                                      proute1: snapshot
                                          .data.documents[index].data["route1"],
                                      proute2: snapshot
                                          .data.documents[index].data["route2"],
                                    )));
                      },
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue[700],
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
