import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar:AppBar(
            backgroundColor: Colors.blue,
            title: Text('Ask me anything'),
          ),
          body: MyApp(),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int val=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: FlatButton(
        onPressed:(){
          setState(() {
            val=Random().nextInt(5)+1;
            print('I got clicked');
          });
        },
        child: Image.asset('images/ball$val.png'),
      ),
    );
  }
}


