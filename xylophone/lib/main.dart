import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKeys({required Color color, required int soundNumber}){
    return Expanded(
      child: TextButton(onPressed: () {
        playSound(soundNumber);
      }, style: TextButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white// Changes text and icon color
      ),
          child: Text('Click Me')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[
                buildKeys(color: Colors.red, soundNumber: 1),
                buildKeys(color: Colors.orange, soundNumber: 2),
                buildKeys(color: Colors.yellow, soundNumber: 3),
                buildKeys(color: Colors.green, soundNumber: 4),
                buildKeys(color: Colors.blue, soundNumber: 5),
                buildKeys(color: Colors.indigo, soundNumber: 6),
                buildKeys(color: Colors.purple, soundNumber: 7),
              ]
            ),
        ),
      )
    );
  }
}
