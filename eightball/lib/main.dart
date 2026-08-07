import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Eight App',
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: EightBall(),
      )
  ));
}

class EightBall extends StatefulWidget {
  const EightBall({super.key});

  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {

  int ballNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Center(child: TextButton(onPressed: () {
      setState(() {
        ballNumber = Random().nextInt(5) + 1;
      });
    },
    child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}

