



// import 'dart:io';
// import 'package:hacker_news/src/models/item_model.dart';
// import 'package:hacker_news/src/resources/repository.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'dart:async';

// class NewsAppDbProvider implements Source, Cache{
//   Database db;

//   NewsAppDbProvider(){
//     init();
//   }

//   void init() async{
//     Directory documentDirectory = await getApplicationDocumentsDirectory();
//     final path = join(documentDirectory.path, 'items.db');

//     db = await openDatabase(
//       path,
//       version: 1,
//       onCreate: (Database newDb, int version){
//         newDb.execute("""
//           CREATE TABLE items
//           (
//             id INTEGER PRIMARY KEY,
//             type TEXT,
//             by TEXT,
//             time INTEGER,
//             text TEXT,
//             parent INTEGER,
//             kids BLOB,
//             dead INTEGER,
//             deleted INTEGER,
//             url TEXT,
//             score INTEGER,
//             title TEXT,
//             descendants INTEGER
//           )
//         """);
//       }
//     );
    
//   }

//   Future<List<int>>fetchTopIds(){
//     return null;
//   }

//   fetchItem(int id) async {
//       final maps = await db.query(
//         'items',
//         columns: null,
//         where: "id=?",
//         whereArgs: [id],
//       );

//       if(maps.length>0){
//         return ItemModel.fromDb(maps.first);
//       }
//       return null;
//     }

//   Future<int>addItem(ItemModel item){
//       return db.insert("items", item.toMap());
//     }
// }

// final newsDbProvider = NewsAppDbProvider();