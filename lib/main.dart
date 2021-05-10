import 'dart:html';

import 'package:flutter/material.dart';
import 'routes/button.dart';
import 'routes/image.dart';
import 'routes/text.dart';
import 'routes/radio_checkbox.dart';
import 'routes/input_form.dart';

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
      // home: new RadioAndCheckboxRoute(),
      // home: new ButtonRoute(),
      // home: new ImageAndIconRoute(),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   @override 
   _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   @override 
   Widget build(BuildContext context) {
      return Scaffold(
         appBar: new AppBar(
            title:new Text("Flutter Demo"), 
         ),
         body: Column(
            children:<Widget>[
               new Container(
                  child: new GestureDetector(
                     child: Text(
                        "文本格式及样式",
                        style: TextStyle(
                           fontSize: 18.0,
                           color: Colors.blue
                        
                        ),
                     ),
                     onTap: () {
                        Navigator.push(
                           context, 
                           MaterialPageRoute(
                              builder: (context) => TextRoute(),
                           ),
                        );
                     },
                  ),
               ),
               new Container(
                  child: new GestureDetector(
                     child: Text(
                        "按钮",
                        style:TextStyle(
                           color: Colors.blue,
                           fontSize: 18.0,
                           
                        ),        
                     ),
                     onTap: () {
                        Navigator.push(
                           context, 
                           MaterialPageRoute(
                              builder: (context) => ButtonRoute(),
                           ),
                        );
                     },
                  )
               ),
               new Container(
                  child: new GestureDetector(
                     child:Text("图片加载及Icon",style:TextStyle(fontSize:18.0,color:Colors.blue)),
                     onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageAndIconRoute()));
                     },
                  ),
               ),
               new Container(
                  child: GestureDetector(
                     child:Text("单选框和复选框",style:TextStyle(fontSize: 18.0,color: Colors.blue)),
                     onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RadioAndCheckboxRoute()));
                     },
                  ),
               ),
               new Container(
                  child: GestureDetector(
                     child:Text("输入框及表单",style:TextStyle(color: Colors.blue,fontSize:18.0)),
                     onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>InputAndFormRoute()));
                     },
                  ),
               ),
            ]
         ),
      );
   }
}


