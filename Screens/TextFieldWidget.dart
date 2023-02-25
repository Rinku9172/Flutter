import 'package:flutter/material.dart';

class s9 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<s9> {
  var fname = "";
  var lname = "";
  var mycontroller1 = TextEditingController();
  var mycontroller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.cyan,
            title: Text('Textfield Widget'),
          ),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: mycontroller1,
                  decoration: InputDecoration(
                      labelText: "Enter first name",
                      border: OutlineInputBorder()),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: mycontroller2,
                  decoration: InputDecoration(
                      labelText: "Enter last name",
                      border: OutlineInputBorder()),
                ),
                
              ),
               Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    fname=mycontroller1.text;
                    lname=mycontroller2.text;
                  });

                }, child: Text("Click here"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),)
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Hello $fname $lname!")
                
              ),
            ],
          )),
    ));
  }
}
