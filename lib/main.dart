import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              TextButton(
                child: const Text('Click me 1'),
                onPressed: () {
                  playSound(1);
                },
              ),
              TextButton(
                child: const Text('Click me 2'),
                onPressed: () {
                  playSound(2);
                },
              ),
              TextButton(
                child: const Text('Click me 3'),
                onPressed: () {
                  playSound(3);
                },
              ),
              TextButton(
                child: const Text('Click me 4'),
                onPressed: () {
                  playSound(4);
                },
              ),
              TextButton(
                child: const Text('Click me 5'),
                onPressed: () {
                  playSound(5);
                },
              ),
              TextButton(
                child: const Text('Click me 6'),
                onPressed: () {
                  playSound(6);
                },
              ),
              TextButton(
                child: const Text('Click me 7'),
                onPressed: () {
                playSound(7);
              },
             ),
            ],
          ),
        ),
      ),
    );
  }
}