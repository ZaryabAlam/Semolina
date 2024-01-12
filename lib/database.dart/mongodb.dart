import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:semolina/utils/constants.dart';

class MongoDatabase {
  static var db, userCollection;
  static connect() async {
    db = await Db.create(mongoURL);
    await db.open();
    inspect(db);
    userCollection = db.collection(mongoCollection);
  }

//fetch all data
  static Future<List<Map<String, dynamic>>> getData() async {
    final arrData = await userCollection.find().toList();
    return arrData;
  }

//search
  static Future<List<Map<String, dynamic>>> searchData(
      String key, String value) async {
    final query = where
        .eq(key, value) // Exact match
        .or(where.eq(
            key,
            BsonRegexp(".*$value.*",
                caseInsensitive: true))); // Case-insensitive wildcard search

    final arrData = await userCollection.find(query).toList();
    return arrData;
  }
// static Future<List<Map<String, dynamic>>> searchData(String key, String value) async {
//     final query = where.eq(key, value);
//     final arrData = await userCollection.find(query).toList();
//     return arrData;
//   }
}
