import 'package:flutter/material.dart';
import 'package:semolina/services/WordsDao.dart';
import 'package:semolina/views/detailPage.dart';
import 'package:semolina/models/Words.dart';
import 'package:semolina/utils/constants.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchWord = "";
  final TextEditingController _searchController = TextEditingController();

  Future<List<Words>> getAllWord() async {
    var list = await WordsDao().allWords();
    return list;
  }

  Future<List<Words>> search(String search) async {
    var list = await WordsDao().searchWord(search);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text("Semolina Dictionary"),
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
                  onChanged: (searchResult) {
                    print(searchResult);
                    setState(() {
                      searchWord = searchResult;
                    });
                  },
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
          Expanded(
            child: FutureBuilder<List<Words>>(
              future:
                  searchWord.isEmpty ? Future.value([]) : search(searchWord),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                  var list = snapshot.data!;
                  return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, i) {
                      var word = list[i];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage(list[i])));
                        },
                        child: SizedBox(
                          height: 50,
                          child: Card(
                            shadowColor: Colors.black26,
                            // color: Colors.orange.shade100,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${word.eng}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${word.tur}",
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else if (searchWord.isNotEmpty && snapshot.data!.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off_rounded,
                          color: primaryColor,
                          size: 64,
                        ),
                        Text("No Result Found!")
                      ],
                    ),
                  );
                } else {
                  // This will handle the case when the search is empty
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: primaryColor,
                          size: 64,
                        ),
                        Text("Search Something!"),
                      ],
                    ),
                  );
                  // This container is empty and displays nothing
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
