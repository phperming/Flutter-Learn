import 'dart:html';

import 'package:flutter/material.dart';

class ButtonRoute extends StatefulWidget {
  @override
  _ButtonRouteState createState() => new _ButtonRouteState();
}

class _ButtonRouteState extends State<ButtonRoute> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: Text("Normal"),
        ),
        OutlineButton(
          onPressed: () {},
          child: Text("Normal"),
        ),
        // IconButton(
        //   icon: Icon(Icons.thumb_up),
        //   onPressed: () => {},
        // )
        FlatButton(
          color: Colors.blue,
          highlightColor: Colors.blue[700],
          colorBrightness: Brightness.dark,
          splashColor: Colors.grey,
          onPressed: () {},
          child: Text("Submit"),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
        RaisedButton.icon(
          onPressed: _onPressed,
          icon: Icon(Icons.send),
          label: Text("发送"),
        ),
        OutlineButton.icon(
          onPressed: _onPressed,
          icon: Icon(Icons.add),
          label: Text("添加"),
        ),
        FlatButton.icon(
          onPressed: _onPressed,
          icon: Icon(Icons.info),
          label: Text("详情"),
        )
      ],
    );
  }

  void _onPressed() {
    print("Button pressed");
  }
}
