import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playsound(int number) {
    final player = new AudioCache();
    player.play('note$number.wav');
  }

  Expanded CreateButton(Color color, int number) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(number);
        },
        child: Text('play'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CreateButton(Colors.blue, 1),
              CreateButton(Colors.orange, 2),
              CreateButton(Colors.green, 3),
              CreateButton(Colors.yellow, 4),
              CreateButton(Colors.red, 5),
              CreateButton(Colors.lightGreen, 6),
              CreateButton(Colors.greenAccent, 7),
            ],
          ),
        ),
      ),
    );
  }
}
