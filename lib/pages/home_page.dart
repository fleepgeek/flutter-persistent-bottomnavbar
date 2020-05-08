import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FlatButton(
          child: Text("Add"),
          color: Colors.orange,
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ),
        Container(
          height: 400,
          color: Colors.green,
          child: Center(
            child: Text(
              "$counter",
              style: TextStyle(fontSize: 42),
            ),
          ),
        ),
        Container(
          height: 400,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
