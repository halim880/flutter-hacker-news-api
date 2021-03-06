

import 'package:hacker_news/src/models/item_model.dart';
import 'package:hacker_news/src/resources/news_api_provider.dart';
import 'package:hacker_news/src/resources/news_db_privider.dart';

class Repository{
  List<Source> sources = <Source>[
    // newsDbProvider,
    NewsApiProvider(),
  ];

  // List<Cache> caches = <Cache>[
  //   newsDbProvider,
  // ];

  Future<List<int>> fetchTopIds(){
    return sources[0].fetchTopIds();
  }

  fetchItem(int id) async{
    ItemModel item;
    Source source;

    for(source in sources){
      item = await source.fetchItem(id);
      if(item!=null) break;
    }

    // for(var cache in caches){
    //   cache.addItem(item);
    // }
    return item;
  }
}

abstract class Source {
  Future<List<int>>fetchTopIds();
  Future<ItemModel>fetchItem(int id);
}

abstract class Cache{
  Future<int>addItem(ItemModel item);
}