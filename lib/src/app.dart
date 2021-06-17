
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hacker_news/src/blocs/stories_provider.dart';
import 'package:hacker_news/src/screans/news_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoriesProvider(
      child : MaterialApp(
        title: 'News!',
        home: NewsList(),
      )
    );
  }
}