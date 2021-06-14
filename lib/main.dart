import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isBluetoothOn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter IconButon Tutorial by Woolha.com'),
        ),
        body: Center(
          child: IconButton(
            icon: Icon(Icons.bluetooth),
            onPressed: () {
              setState(() {
                _isBluetoothOn = !_isBluetoothOn;
              });
            },
          ),
        ),
      ),
    );
  }
}