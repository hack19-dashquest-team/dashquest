import 'package:flutter/material.dart';

class Articles extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(padding: const EdgeInsets.all(10.0),
        child: Text("Learning Material"),),
         SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: const Text('Results'),
              onPressed: () {
//Route to Survey page
//Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz()),);
              },
            )),
      ],
    );
  }
}
