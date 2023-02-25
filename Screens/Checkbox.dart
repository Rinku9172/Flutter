import 'package:flutter/material.dart';

class s11 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<s11> {
  bool? flag1 = true;
  bool? flag2 = true;
  String msg = "";
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 89, 104, 107),
            title: Text('Checkbox Widget'),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 40),

            //color: Colors.amber,

            child: Column(
              children: [
                ListTile(
                  title: Text("C"),
                  leading: Checkbox(
                    activeColor: Colors.cyan,
                    side: BorderSide(width: 2, color: Colors.cyan),
                    // shape:RoundedRectangleBorder(borderRadius:BorderRadius.zero),
                    shape: OvalBorder(),

                    value: flag1,
                    onChanged: (value) {
                      setState(() {
                        flag1 = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text("C++"),
                  leading: Checkbox(
                    // hoverColor: Colors.transparent,
                    // focusColor: Colors.transparent,
                    //  activeColor: Colors.purpleAccent,
                    //  checkColor: Colors.pinkAccent,
                    activeColor: Colors.cyan,
                    side: BorderSide(width: 2, color: Colors.cyan),
                    value: flag2,
                    onChanged: (value) {
                      setState(() {
                        flag2 = value;
                      });
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      msg = "";
                      if (flag1 == true) {
                        msg = "C";
                      }
                      if (flag2 == true) {
                        msg += " C++";
                      }
                    });
                  },
                  child: Text("Ok"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 54, 67, 69)),
                ),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("You selected $msg"))
              ],
            ),
          )),
    ));
  }
}
