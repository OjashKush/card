import 'dart:async';

import 'package:flutter/material.dart';
import 'package:linkable/linkable.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 80, backgroundImage: AssetImage('LiquidColour.jpg')),
              Text(
                'Ojash Kushwaha',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Freshman-IIITB',
                style: TextStyle(
                  fontFamily: 'FiraSans',
                  fontSize: 20.0,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50.0,
                width: 500.0,
                child: Divider(
                  color: Colors.green,
                ),
              ),
              Card(
                color: Colors.white70,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: ListTile(
                       leading: Icon(Icons.mail),
                      title: Linkable(
                        text: "ojashkush@gmail.com",
                          style: TextStyle(
                            color: Colors.green,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          )),
                    )),
              ),
              Card(
                color: Colors.white70,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Linkable(
                        text: "+919569935700",
                          style: TextStyle(
                            color: Colors.green,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          )),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
