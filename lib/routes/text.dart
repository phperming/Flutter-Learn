import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextRoute extends StatefulWidget {
  @override
  _TextRouteState createState() => new _TextRouteState();
}

class _TextRouteState extends State<TextRoute> {
  GestureRecognizer _tapReconginzer;

  @override
  void initState() {
    _tapReconginzer = TapGestureRecognizer();
    super.initState();
  }

  @override
  void dispose() {
    _tapReconginzer.dispose();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text("Hello world", textAlign: TextAlign.center),
          Text(
            "Hello world! i'm jack." * 4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Hello word",
            textScaleFactor: 1.5,
          ),
          Text(
            "hello world" * 6,
            textAlign: TextAlign.center,
          ),
          Text(
            "hello world",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              height: 1.2,
              fontFamily: "Courier",
              decorationStyle: TextDecorationStyle.dashed,
              background: new Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
            ),
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                text: "Home: ",
              ),
              TextSpan(
                  text: "https://flitterchaina.club",
                  style: TextStyle(color: Colors.blue),
                  recognizer: _tapReconginzer)
            ]),
          ),
          DefaultTextStyle(
            style: TextStyle(color: Colors.blue, fontSize: 20.0),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("hello World"),
                Text("I m jack"),
                Text(
                  "I m jack",
                  style: TextStyle(inherit: false, color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
