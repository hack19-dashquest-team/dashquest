import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

import 'learn.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(Results());
}

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Drumroll please...',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                Text(
                  'YOU ARE A PADAWAN!!',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold,
                    fontSize: 72.0
                  ),
                ),
                FlatButton(
                  child: Text("Time to level up to become a master"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Learn()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );


    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        '',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Survey',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Survey'),
        ),
        body: ListView(
          children: [
            Image.asset(
              //change me
              'images/jedi_blue.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
