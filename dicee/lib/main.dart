import 'package:flutter/material.dart';
import 'dart:math';

// This is the basic structure of an empty void main() function
/*void main() {
  return runApp(MaterialApp(

  ));
}*/

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice App',
        ),
        backgroundColor: Colors.red,
      ),
      body: DiceState(),
    )
  ));
}

class DiceState extends StatefulWidget {
  const DiceState({super.key});

  @override
  State<DiceState> createState() => _DiceStateState();
}


class _DiceStateState extends State<DiceState> {

  int leftDiceNumber = 4;
  int rightDiceNumber = 1;

  void ChangeDiceFace(){
    leftDiceNumber = Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 1,
            child: TextButton(
              onPressed: () { setState(() {
                ChangeDiceFace();
              });
                print('Left Button Pressed');  },
              child: Image(image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            // flex: 2,
            child: TextButton(
              onPressed: () { setState(() {
                ChangeDiceFace();
              }); },
              child: Image(image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



