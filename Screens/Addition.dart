import 'package:flutter/material.dart';

class s10 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<s10> {
  var x = 0;
  var y = 0;
  var z = 0;
  var mycontroller1 = TextEditingController();
  var mycontroller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.pinkAccent,
            title: Text('Addition'),
          ),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: mycontroller1,
                  decoration: InputDecoration(
                      labelText: "Enter first number",
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: mycontroller2,
                  decoration: InputDecoration(
                      labelText: "Enter second number",
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        x = int.parse(mycontroller1.text);
                        y = int.parse(mycontroller2.text);
                        z = x + y;
                      });
                    },
                    child: Text("Add"),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
                  )),
              Padding(
                //initially value of z shows 0
                  padding: EdgeInsets.all(10), child: Text("Addition is $z ")),
            ],
          )),
    ));
  }
}
