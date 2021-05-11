import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Magic8Ball());

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int num = 1;

  void rollNum() {
    setState(() => num = Random().nextInt(5) + 1);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Ask Me Anything',
          ),
        ),
        body: Center(
          child: TextButton(
            onPressed: rollNum,
            child: Image.asset('images/ball$num.png'),
          ),
        ),
      ),
    );
  }
}
