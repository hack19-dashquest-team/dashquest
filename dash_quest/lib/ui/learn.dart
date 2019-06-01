import 'package:dash_quest/ui/articles.dart';
import 'package:flutter/material.dart';
import 'ui/articles.dart';

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
              MaterialButton(
              child: ListTile(
                leading: Icon(Icons.play_arrow),
                title: Text('Learn to Build a Gradient Background'),
                subtitle: Text('UI', style: TextStyle(color: Colors.blue),
              ),), onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Articles()),);
              },),
              MaterialButton(
              child: ListTile(
                leading: Icon(Icons.pages),
                title: Text('Build a Basic UI from Scratch'),
                subtitle: Text('UI', style: TextStyle(color: Colors.blue),
              ),), onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Articles()),);
              },),
              MaterialButton(
              child: ListTile(
                leading: Icon(Icons.gif),
                title: Text('UI Basics'),
                subtitle: Text('UI', style: TextStyle(color: Colors.blue),
              ),), onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => Articles()),);
              },),
            ],
          
          ),
        ),
      ],
    );
  }
}
