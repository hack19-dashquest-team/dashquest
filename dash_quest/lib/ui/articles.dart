import 'package:dash_quest/model/article.dart';
import 'package:flutter/material.dart';

import 'Survey.dart';

class ArticlesPage extends StatelessWidget {
  Article article;

  ArticlesPage(this.article);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Articles(),
      appBar: AppBar(
        title: Text("Article"),
      ),
    );
  }
}

class Articles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Learning Material"),
        ),
        Image.asset(
          //change me
          'images/end_survey.png',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        // Expanded(
        //  child: WebView(

        //     javascriptMode: JavascriptMode.unrestricted,
        //     initialUrl: 'https://www.youtube.com/channel/UCDCFIqDZ1QUqivxVFQDxS0w',

        //   ),),

        SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: const Text('Complete'),
              onPressed: () {
//Route to Survey page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Survey()),
                );
              },
            )),
      ],
    );
  }
}
