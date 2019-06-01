//Quiz UI widgets
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(10.0),
        child: Text("How advanced are you in Flutter?"),),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              MaterialButton(child: Text("Text answer 1"), onPressed: () {

              }),
              MaterialButton(
                child: Image.asset(
                  'images/ButtonExpand.jpg'),
                onPressed: () {

                },
              ),
              MaterialButton(
                child: Image.asset(
                   'images/ButtonExpand.jpg'),
                onPressed: () {

                },
              ),
              MaterialButton(
                child: RaisedButton(child: const Text('Press Here')),
                onPressed: () {
//pressed grid cell .
                },
              ),
            ],
          ),
        ),
        SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: const Text('Results'),
              onPressed: () {
//Route to results page
//Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz()),);
              },
            )),
      ],
    );
  }
}
