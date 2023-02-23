import 'package:flutter/material.dart';

class s2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Container')),
        body: Container(child: Text(
            'Container without BoxDecoration'
          ),
          color: Colors.amber,
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 1),
          padding: EdgeInsets.all(15),
           //width: 32,
          // height: 20,
          )
      ),
    ));
  }
}
