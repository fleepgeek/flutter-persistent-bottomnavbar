import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    counter = PageStorage.of(context)
            ?.readState(context, identifier: ValueKey("counter_value")) ??
        0;
  }

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
            PageStorage.of(context)?.writeState(
              context,
              counter,
              identifier: ValueKey("counter_value"),
            );
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
