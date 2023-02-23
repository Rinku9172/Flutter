import 'package:flutter/material.dart';

class s1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First Flutter program')),
        body: Center(
          child: Text(
            'Hello Flutter!!',
            style: TextStyle(fontSize: 30, color: Colors.purple),
          ),
        ),
      ),
    ));
  }
}
