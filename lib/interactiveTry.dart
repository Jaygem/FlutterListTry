import 'package:flutter/material.dart';


class Boom extends StatefulWidget{
  @override
  _Boom createState() => _Boom();
  
}

class _Boom extends State<Boom>{
  int size = 10;

  var a = new Row( children: [new Container(color: Colors.green)]);
  var b = new FloatingActionButton(
                  backgroundColor: Colors.redAccent,
                  onPressed: () => {},);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Button thingy',
        home: new Scaffold(
            body: new Column(
              children :[new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [this.b],
              ),this.a]
              
            ),
        ));
  }

}