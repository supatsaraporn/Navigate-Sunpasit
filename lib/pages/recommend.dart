import 'package:flutter/material.dart';
import 'package:navisunpasit/pages/poster.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RecommendPage extends StatefulWidget {
  @override
  _RecommendPageState createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("แนะนำ"),
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
      body: StreamBuilder(
        stream: Firestore.instance.collection("poster").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Column(
                children: <Widget>[
                  Text(""),
                  CircularProgressIndicator(),
                  Text("กำลังโหลด..."),
                ],
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      elevation: 3.0,
                      shadowColor: Colors.green,
                      color: Colors.lightGreen[50],
                      child: Container(
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PosterPage(
                                          pid: snapshot
                                              .data.documents[index].documentID,
                                          pname: snapshot.data.documents[index]
                                              .data["name"],
                                          pdetail: snapshot.data
                                              .documents[index].data["detail"],
                                          piconLocation: snapshot
                                              .data
                                              .documents[index]
                                              .data["iconLocation"],
                                          proomLocation: snapshot
                                              .data
                                              .documents[index]
                                              .data["roomLocation"],
                                          pimageLocation: snapshot
                                              .data
                                              .documents[index]
                                              .data["imageLocation"],
                                        )));
                          },
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 45,
                            child: FittedBox(
                              child: Image(
                                image: AssetImage(snapshot.data.documents[index]
                                    .data["iconLocation"]),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          title:
                              Text(snapshot.data.documents[index].data["name"]),
                          subtitle: Text(snapshot
                              .data.documents[index].data["roomLocation"]),
                        ),
                      ),
                    ),
                  ],
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
