import 'package:flutter/material.dart';
import 'package:semolina/database.dart/mongodb.dart';

class SomaliCloud extends StatefulWidget {
  const SomaliCloud({super.key});

  @override
  State<SomaliCloud> createState() => _SomaliCloudState();
}

class _SomaliCloudState extends State<SomaliCloud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: MongoDatabase.getData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: ((context, index) {
                        return Container();
                      }));
                } else {
                  return Center(child: Text("No Data Available"));
                }
              }
            }));
  }
}
