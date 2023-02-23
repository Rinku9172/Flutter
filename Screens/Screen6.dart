import 'package:flutter/material.dart';

class s6 extends StatelessWidget {
  var i = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text(
              'Demo Event',
            ),
          ),
          body: Column(
            children: [
              Text('Count is $i'),
              TextButton(
                  onPressed: () {
                    
                    i++;
                    print('Button clicked $i times');
                  },
                  child: Text('Click me')),
            ],
          )),
    ));
  }
}
//there is no increment in value of count when button is clicked
//because StatelessWidget don't support
//to handle this we will use StateFullWidget