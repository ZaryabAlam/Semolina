import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:semolina/database.dart/mongodb.dart';
import 'package:semolina/database.dart/mongodb_model.dart';
import 'package:semolina/utils/constants.dart';

class SomaliCloud extends StatefulWidget {
  const SomaliCloud({super.key});

  @override
  State<SomaliCloud> createState() => _SomaliCloudState();
}

class _SomaliCloudState extends State<SomaliCloud> {
  final TextEditingController _searchController = TextEditingController();
  List<MongodbModel> filteredWords = [];

  // void filterWords() async {
  //   final searchData =
  //       await MongoDatabase.searchData("word", "${_searchController.text}");
  //   print("Search Data: $searchData");
  // }

  void filterWords(String query) async {
    final searchData =
        await MongoDatabase.searchData("word", "${_searchController.text}");
    print("Search Data: $searchData");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cloud Data")
              .animate()
              .fadeIn(delay: 200.ms, duration: 200.ms)
              .slideY(duration: 200.ms),
        ),
        body: Column(
          children: [
            Hero(
              tag: 'searchbar-tag',
              child: Material(
                color: transparent,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    autofocus: true,
                    controller: _searchController,
                    onChanged: filterWords,
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () => _searchController.clear(),
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor, width: 3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () async {
                  print("Cloud Search");
                  final searchData =
                      await MongoDatabase.searchData("word", "a");
                  print("Search Data: $searchData");
                },
                child: Text("Search")),
            Expanded(
              child: FutureBuilder(
                  future: MongoDatabase.getData(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      if (snapshot.hasData) {
                        // var total = snapshot.data.length;
                        // print(total);

                        return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: ((context, index) {
                              // var data = MongodbModel();
                              MongodbModel data =
                                  MongodbModel.fromJson(snapshot.data[index]);
                              return Container(
                                child: Column(
                                  children: [
                                    Text(data.word.toString()),
                                  ],
                                ),
                              );
                            }));
                      } else {
                        return Center(child: Text("No Data Available"));
                      }
                    }
                  }),
            ),
          ],
        ));
  }
}
