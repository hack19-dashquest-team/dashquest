import 'package:flutter/material.dart';

class Learn extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(10.0),
        child: Text("Learn"),),
        Expanded(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.play_arrow),
                title: Text('Learn to Build a Gradient Background'),
                subtitle: Text('UI', style: TextStyle(color: Colors.blue),
              ),),
              ListTile(
                leading: Icon(Icons.pages),
                title: Text('Build a Basic UI from Scratch'),
                subtitle: Text('UI', style: TextStyle(color: Colors.blue),
              ),),
              ListTile(
                leading: Icon(Icons.gif),
                title: Text('UI Basics'),
                subtitle: Text('UI', style: TextStyle(color: Colors.blue),
              ),),
            ],
          
          ),
        ),
      ],
    );
  }
}
