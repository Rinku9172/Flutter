import 'package:flutter/material.dart';

class s13 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<s13> {
  bool flag1 = false;
  String msg = '';
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.teal,
                title: const Text(
                  'Switch Demo',
                )),
            body: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Switch the button below:",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                ListTile(
                  title: Text('Developer Options'),
                  leading: Switch(
                      activeColor: Colors.blue,
                      activeTrackColor: Colors.green,
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      value: flag1,
                      onChanged: (value) {
                        setState(() {
                          msg = '';
                          flag1 = value;
                          if (flag1 == true) {
                            msg = "Switch is on";
                          } else {
                            msg = "Switch is off";
                          }
                        });
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    msg,
                    style: TextStyle(fontSize: 29),
                  ),
                ),
              ],
            )))));
  }
}
