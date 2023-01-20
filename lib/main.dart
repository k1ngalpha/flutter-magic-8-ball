import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[200],
        appBar: AppBar(
          title: Text('Ask Me Anything!'),
          backgroundColor: Colors.indigo[400],
        ),
        body: MyApp(),
      ),
    ));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ChangeDecision = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          child: Image(
            image: AssetImage('images/ball$ChangeDecision.png'),
          ),
          onPressed: () {
            setState(() {
              ChangeDecision = Random().nextInt(5) + 1;
            });
          },
        ),
      ),
    );
  }
}
