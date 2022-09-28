import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent.shade400,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blueAccent.shade700,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  // creating variables
  int ball_number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
              ball_number = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ball_number.png'),
        ),
      ),
    );
  }
}
