// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioAndCheckboxRoute extends StatefulWidget {
  @override
  _RadioAndCheckboxRoteState createState() => new _RadioAndCheckboxRoteState();
}

class _RadioAndCheckboxRoteState extends State<RadioAndCheckboxRoute> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
           title:Text("单选及复选"),
        ),
        body: Column(
         children : <Widget>[
            Row(
               children: <Widget>[
                  Switch(
                     value: _switchSelected,
                     onChanged: (value) {
                        //重构页面
                        setState(() {
                           _switchSelected = value;
                        });
                     },
                  ),
                  Text("关"),
                  Switch(
                     value: !_switchSelected,
                     onChanged: (value) {

                     },
                  ),
                  Text("开"),     
               ]
            ),
            Row(
               children: <Widget>[
                  Checkbox(
                     value: _checkboxSelected,
                     activeColor: Colors.red,
                     onChanged: (value) {
                        setState(() {
                           _checkboxSelected = value;
                        });
                     },
                  ),
                  Text("未选中"),
                  Checkbox(
                     value:!_checkboxSelected,
                     activeColor: Colors.red,
                     onChanged: (value) {
                        
                     },
                  ),
                  Text("选中"),
            ]
            )
       ]
      ),
     );
     
  }
}
