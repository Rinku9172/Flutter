import 'package:flutter/material.dart';

class s3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text(
              'Container',
            ),
          ),
          body: Container(
              child: Text('Container with BoxDecoration'),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              alignment: Alignment.center
              // margin: EdgeInsets.only(right: 1),
              //padding: EdgeInsets.all(15),

              //width: 32,
              // height: 20,
              )),
    ));
  }
}
