import 'package:flutter/material.dart';
import "dart:math";

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
          elevation:5.0 ,
          title: Center(
              child: Text(
            "Ask Me Anything",
            style: TextStyle(
                color: Colors.white, fontSize: 20.0, letterSpacing: 2.0),
          )),
        ),
        body: Balls(),
      ),
    ),
  );
}

class Balls extends StatefulWidget {
  @override
  _BallsState createState() => _BallsState();
}

class _BallsState extends State<Balls> {
  int value = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                value = Random().nextInt(5) + 1;
              });
            },
            child: Center(child: Image.asset('images/ball$value.png')),
          ),
        )
      ],
    );
  }
}
