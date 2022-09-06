import 'dart:async';
import 'package:ace_app/Componants/Clolors.dart';
import 'package:ace_app/StartPage.dart';
import 'package:ace_app/Componants/Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => StartPage())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: clr.startTxt,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(75.0),
            child: Image.asset(Img.aceImage),
          ),
        ));
  }
}
