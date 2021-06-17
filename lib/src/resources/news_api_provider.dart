
import 'dart:convert';
import 'dart:async';
import 'package:hacker_news/src/models/item_model.dart';
import 'package:hacker_news/src/resources/repository.dart';
import 'package:http/http.dart';
final _root = 'https://hacker-news.firebaseio.com/v0';
class NewsApiProvider implements Source{
  Client client = Client();

  Future<List<int>>fetchTopIds() async{
    final response = await client.get(Uri.parse('$_root/topstories.json'));
    final ids = json.decode(response.body);
    return ids.cast<int>();
  }

  fetchItem(id) async{
    final response = await client.get(Uri.parse('$_root/item/$id.json'));
    final parsedJson = json.decode(response.body);

    return ItemModel.fromJson(parsedJson);
  }
}

