import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputAndFormRoute extends StatefulWidget {
  @override
  _InputAndFormRouteState createState() => new _InputAndFormRouteState();
}

class _InputAndFormRouteState extends State<InputAndFormRoute> {
  String username;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框及表单"),
      ),
      body: Column(children: <Widget>[
        TextField(
          decoration: InputDecoration(
            labelText: "用户名",
            hintText: "用户名或邮箱",
            prefixIcon: Icon(Icons.person),
          ),
          autofocus: true,
          onChanged: (value) {
            username = value;
          },
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登陆密码",
              prefixIcon: Icon(Icons.lock)),
          obscureText: true,
          onChanged: (value) {
            password = value;
          },
        ),
        Builder(builder: (context) {
          return RaisedButton(
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                  new SnackBar(content: new Text(username + password)));
            },
            child: Text("点击显示输入框的值"),
          );
        }),
      ]),
    );
  }
}
