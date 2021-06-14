import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}




class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
  bool status = false;
}

class _MyAppState extends State<MyApp> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("MENU UTAMA"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(crossAxisCount: 2, children: <Widget>[
          MyMenu(
              title: "LOCATION",
              icon: Icons.add_location_outlined,
              warna: Colors.black),
          MyMenu(
              title: "SNOW",
              icon: Icons.ac_unit_rounded,
              warna: Colors.blue),
          MyMenu(
              title: "DARK",
              icon: Icons.bedtime,
              warna: Colors.black),
          MyMenu(
              title: "SUNNY",
              icon: Icons.brightness_5_outlined,
              warna: Colors.deepOrange),
          MyMenu(
              title: "CLOUDY",
              icon: Icons.cloud_circle_outlined,
              warna: Colors.lightBlue),
          MyMenu(
              title: "RAINY",
              icon: Icons.beach_access,
              warna: Colors.blueGrey,
    ),


              //_value: true,


        ]
      ),
      ),
    );
  }
}


class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.green,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warna,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0)),
             /*Center(
               child: Container(
                 child: FlutterSwitch(
                   width: 125.0,
                   height: 55.0,
                   valueFontSize: 25.0,
                   toggleSize: 45.0,
                   value: status,
                   borderRadius: 30.0,
                   padding: 8.0,
                   showOnOff: true,
                   onToggle: (val) {},
                 ),
               ),
             )*/
              Center(
                child: Switch(
                  value: false,
                  onChanged: (bool value) {
                    //setState(() {
                     // _value = value;
                    //});
                  },
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                ),
              )
            ], // activeTrackColor: Colors.lightGreenAccent,
            //  activeColor: Colors.green,
          ),
        ),
      ),
    );
  }
}
