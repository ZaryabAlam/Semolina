import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:semolina/database.dart/mongodb.dart';
import 'package:semolina/database.dart/mongodb_model.dart';
import 'package:semolina/utils/constants.dart';
import 'package:semolina/views/cloud/somaliDes.dart';

class SomaliCloud extends StatefulWidget {
  const SomaliCloud({super.key});

  @override
  State<SomaliCloud> createState() => _SomaliCloudState();
}

class _SomaliCloudState extends State<SomaliCloud> {
  final TextEditingController _searchController = TextEditingController();
  List<MongodbModel> filteredWords = [];
  List<Map<String, dynamic>> _searchResults = [];

  // void filterWords() async {
  //   final searchData =
  //       await MongoDatabase.searchData("word", "${_searchController.text}");
  //   print("Search Data: $searchData");
  // }

  void filterWords(String query) async {
    final searchData =
        await MongoDatabase.searchData("word", "${_searchController.text}");
    setState(() {
      _searchResults = searchData;
    });
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
            // TextButton(
            //     onPressed: () async {
            //       print("Cloud Search");
            //       final searchData =
            //           await MongoDatabase.searchData("word", "a");
            //       print("Search Data: $searchData");
            //     },
            //     child: Text("Search")),
            Expanded(
                child: _searchController.text.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 20),
                            Container(
                              height: 80,
                              width: 80,
                              child: Image(
                                  image: AssetImage("assets/search_icon.png")),
                            ),
                            SizedBox(height: 10),
                            Text("Search Something!"),
                          ],
                        ),
                      )
                    : _searchResults.isNotEmpty
                        ? ListView.builder(
                            itemCount: _searchResults.length,
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30),
                                    height: 30,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.white30,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Material(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(15),
                                      child: InkWell(
                                        onTap: () {
                                          Get.to(() => CloudWordDes(
                                                word: _searchResults[index]
                                                    ['word'],
                                                grammer: _searchResults[index]
                                                        ['grammer']
                                                    .toString(),
                                                meaning: _searchResults[index]
                                                    ['meaning'],
                                              ));
                                        },
                                        child: Text(
                                          "${_searchResults[index]['word']}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                ],
                              );
                              // return GestureDetector(
                              //   onTap: () {
                              //     Get.to(() => CloudWordDes(
                              //           word: _searchResults[index]['word'],
                              //           grammer: _searchResults[index]['grammer'].toString(),
                              //           meaning: _searchResults[index]['meaning'],
                              //         ));
                              //   },
                              //   child: Container(
                              //     height: 50,
                              //     child: Card(
                              //       shadowColor: Colors.black26,
                              //       // color: Colors.orange.shade100,
                              //       child: Center(
                              //         child: Text(
                              //           "${_searchResults[index]['word']}",
                              //           style: TextStyle(
                              //               fontWeight: FontWeight.bold),
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // );
                            },
                          )
                        : Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 20),
                                Container(
                                  height: 80,
                                  width: 80,
                                  child: Image(
                                      image:
                                          AssetImage("assets/cross_icon.png")),
                                ),
                                SizedBox(height: 10),
                                Text("No Result Found!")
                              ],
                            ),
                          )),
            // Expanded(
            //   child: FutureBuilder(
            //       future: MongoDatabase.getData(),
            //       builder: (context, AsyncSnapshot snapshot) {
            //         if (snapshot.connectionState == ConnectionState.waiting) {
            //           return Center(
            //             child: CircularProgressIndicator(),
            //           );
            //         } else {
            //           if (snapshot.hasData) {
            //             // var total = snapshot.data.length;
            //             // print(total);
            //             return ListView.builder(
            //                 itemCount: snapshot.data.length,
            //                 itemBuilder: ((context, index) {
            //                   // var data = MongodbModel();
            //                   MongodbModel data =
            //                       MongodbModel.fromJson(snapshot.data[index]);
            //                   return GestureDetector(
            //                     onTap: () {
            //                       Get.to(() => CloudWordDes(
            //                             word: data.word.toString(),
            //                             grammer: data.grammer.toString(),
            //                           ));
            //                     },
            //                     child: Container(
            //                       height: 50,
            //                       child: Card(
            //                         shadowColor: Colors.black26,
            //                         // color: Colors.orange.shade100,
            //                         child: Center(
            //                           child: Text(
            //                             "${data.word.toString()}",
            //                             style: TextStyle(
            //                                 fontWeight: FontWeight.bold),
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   );
            //                 }));
            //           } else {
            //             return Center(child: Text("No Data Available"));
            //           }
            //         }
            //       }),
            // ),
          ],
        ));
  }
}
