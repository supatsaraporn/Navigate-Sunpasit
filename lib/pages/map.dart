import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:navisunpasit/pages/home.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    showDetails() {
      Alert(
        context: context,
        title: "โรงพยาบาลสรรพสิทธิประสงค์",
        content: Column(
          children: <Widget>[
            Image.asset(
              'image/navigation.png',
              width: 120,
              height: 140,
              // fit: BoxFit.cover,
            ),
            Text(
                '122 ถนนสรรพสิทธิ์ ตำบลในเมือง อำเภอเมือง จังหวัดอุบลราชธานี 34000',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Itim',
                  fontSize: 16,
                )),
            Text('โทรศัพท์: 045-319200 แฟกซ์: 045-244973',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontFamily: 'Itim',
                  fontSize: 15,
                )),
          ],
        ),
      ).show();
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ที่ตั้งโรงพยาบาล",
          style:
              TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Itim'),
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
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.assistant_photo),
              color: Colors.grey,
              onPressed: showDetails)
        ],
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(15.236348681342301, 104.86544753379293),
          zoom: 16,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          Marker(
              markerId: MarkerId("1"),
              position: LatLng(15.236348681342301, 104.86544753379293),
              infoWindow: InfoWindow(
                  title: "โรงพยาบาลสรรพสิทธิประสงค์",
                  snippet: "Sunpasitthiprasong Hospital")),
        },
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     MaterialPageRoute materialPageRoute =
      //         MaterialPageRoute(builder: (BuildContext context) => HomePage());
      //     Navigator.of(context).push(materialPageRoute);
      //   },
      //   label: Text(
      //     'หน้าหลัก',
      //     style:
      //         TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Itim'),
      //   ),
      //   icon: Icon(Icons.home_outlined),
      //   backgroundColor: Colors.red,
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
