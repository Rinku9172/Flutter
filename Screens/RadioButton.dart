import 'package:flutter/material.dart';

class s12 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<s12> {
  bool? flag1 = true;
  bool? flag2 = true;
  String? msg = '';
  String? gv = 'male';
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Column(
            children: [
              ListTile(
                title: Text('Male'),
                leading: Radio(
                  activeColor: Colors.black,
                  value: 'male',
                  groupValue: gv,
                  onChanged: (value) {
                    setState(() {
                      gv = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Female'),
                leading: Radio(
                  activeColor: Colors.black,
                  value: 'female',
                  groupValue: gv,
                  onChanged: (value) {
                    setState(() {
                      gv = value;
                    });
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    msg = gv;
                  });
                },
                child: Text('Ok'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text('You selected $msg.'),
              )
            ],
          ),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.cyan,
            title: Text('Radio Widget'),
          )),
    ));
  }
}
