import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Sunpasitthiprasong Hospital",
              // style: TextStyle(color: Colors.blueGrey
              // ),
            ),
            accountEmail: Text("โรงพยาบาลสรรพสิทธิประสงค์"),
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                image: DecorationImage(
                    image: AssetImage('image/homepageImage.png'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            title: Text("อาคาร 50 พรรษามหาวชิราลงกรณ"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคารผู้ป่วยนอก"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคารวิชิต"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคารผ่าตัด"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคารพยาธิวิทยา"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคารรักษาโรค"),
          ),
          ListTile(
            // leading: Icon(
            //   Icons.favorite,
            //   color: Colors.blueGrey,
            // ),
            title: Text("อาคารศูนย์แพทยศาสตร์ศึกษาชั้นคนิลิก"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคารจอดรถและหอพักแพทย์"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคาร 1"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคาร 2"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคาร 3"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคาร 4"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคาร 5"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคาร 6 พระตา - พระวอ"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคาร 7 พระปทุมวรราชสุริยวงศ์"),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey,
            ),
            title: Text("อาคาร 8 อายุรกรรม"),
          ),
        ],
      ),
    );
  }
}
