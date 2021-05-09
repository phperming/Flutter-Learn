import 'package:flutter/material.dart';
import 'package:flutter_application_demo1/routes/button.dart';
import 'package:flutter_application_demo1/routes/image.dart';
import 'routes/text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter Demo",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: new TextRoute(),
      // home: new ButtonRoute(),
      home: new ImageAndIconRoute(),
    );
  }
}
