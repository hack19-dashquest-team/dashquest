import 'package:dash_quest/model/article.dart';
import 'package:dash_quest/service/article_service.dart';
import 'package:dime/dime.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class LearnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Suggested Articles"),
        ),
        body: Learn());
  }
}

class Learn extends StatefulWidget {
  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  ArticleService articleService;
  List<Article> articles = [];

  @override
  void initState() {
    super.initState();
    articleService = Dime.inject();
    articleService.findAllRatedArticles().then((lst) {
      setState(() {
        articles = lst;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Learn"),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => DashQuestPage()));
          },
          child: Expanded(
            child: ListView.builder(
              itemCount: articles.length,
              itemBuilder: (ctx, i) {
                var article = articles[i];
                var icon = Icons.event_note;
                if (article.type == ArticleType.URL) {
                  icon = Icons.link;
                } else if (article.type == ArticleType.VIDEO) {
                  icon = Icons.play_arrow;
                }
                return ListTile(
                  leading: Icon(icon),
                  title: Text(article.title),
                  subtitle: Text(
                    article.abstract,
                    style: TextStyle(color: Colors.blue),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
