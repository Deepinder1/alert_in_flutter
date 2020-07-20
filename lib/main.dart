import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyHome(),
    ),
  );
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

//generating a dialog
AlertDialog dialog = AlertDialog(
  content: Text(
    'Hello World',
    style: TextStyle(fontSize: 35.0),
  ),
);

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text(
          'Using Alert Dialog',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            //on press of the button
            onPressed: () {
              //showing dialog
              showDialog(
                context: context,
                builder: (BuildContext context) => dialog,
              );
            },
          ),
        ),
      ),
    );
  }
}
