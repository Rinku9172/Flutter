import 'package:flutter/material.dart';

class s4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text(
              'Column Widget',
            ),
          ),
          body: Column(
            //verticalDirection: VerticalDirection.down,
mainAxisAlignment:MainAxisAlignment.center,
//mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Text(
                  'This is Line1',
                  style: TextStyle(fontSize: 30),
                ),
                color: Color.fromARGB(255, 229, 18, 88),
              ),
              Container(
                child: Text(
                  'This is Line2',
                  style: TextStyle(fontSize: 30),
                ),
                color: Color.fromARGB(255, 206, 125, 152),
              ),
            ],
          )),
    ));
  }
}
