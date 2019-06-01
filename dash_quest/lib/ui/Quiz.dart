//Quiz UI widgets
import 'package:flutter/material.dart';

//Column -> Questions text -> -grid, children ()txt, image, codesnipet, button ->button )

class Quiz extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
return Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
Text("How advanced are you in Flutter?"),
Expanded(
  child: GridView.count(

    crossAxisCount: 2,
    children: <Widget>[
Text("Text answer 1"),
DecoratedBox( decoration: BoxDecoration(image: DecorationImage(image: AssetImage('.png'),),),),
DecoratedBox( decoration: BoxDecoration(image: DecorationImage(image: AssetImage('.png'),),),),
RaisedButton(child: const Text('Press Here'),
 onPressed: () {
//show more info? don't know yet.  
},),

    ],
  ),
),
RaisedButton(child: const Text('Results'), 
onPressed: () {
//Route to results page
},)

  ],
);

}

}


