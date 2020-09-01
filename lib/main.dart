import 'package:flutter/material.dart';
import 'dart:async';
import 'package:pickins/pages/hame_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Pickins(),
    theme: ThemeData(
      primaryColor: Color(0xff3737C5),
    ),
  ));
}

class Pickins extends StatefulWidget {
  @override
  _PickinsState createState() => _PickinsState();
}

class _PickinsState extends State<Pickins> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Pickin_Home();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3737C5),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              //FLASH SCREEN IMAGE, BACKGROUND IMAGE//
              //PAGE 1//
              image: AssetImage('images/pickin.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
