import 'package:flutter/material.dart';
import 'dart:math';

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue.shade800,
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(4) + 1;
                print(ballNumber);
              });
            },
            child: Image.asset('images/ball$ballNumber.png')),
      ),
    ));
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );
