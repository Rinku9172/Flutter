import 'package:flutter/material.dart';

class s7 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<s7> {
  var i=0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: Text('Demo Event'),
      ),
      body: Row(children: [
        Text('Count is $i'),
        TextButton(onPressed: (){
          setState(() {
             i++;
          });
         
          print('Button clicked $i times');
        }, child: Text('Click me'))
      ],),),
    ));
  }
}
