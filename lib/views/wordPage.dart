import 'package:flutter/material.dart';
import 'package:semolina/services/WordsDao.dart';
import 'package:semolina/views/detailPage.dart';
import 'package:semolina/models/Words.dart';

class WordPage extends StatefulWidget {
  @override
  State<WordPage> createState() => _WordPageState();
}

class _WordPageState extends State<WordPage> {
  bool isSearching = false;
  String searchWord = "";

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
      appBar: AppBar(
        title: isSearching
            ? TextField(
                decoration: InputDecoration(hintText: "Search"),
                onChanged: (searchResult) {
                  print(searchResult);
                  setState(() {
                    searchWord = searchResult;
                  });
                },
              )
            : Text("Asal Dictionary"),
        actions: [
          isSearching
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isSearching = false;
                    });
                  },
                  icon: Icon(Icons.cancel))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isSearching = true;
                    });
                  },
                  icon: Icon(Icons.search))
        ],
      ),
      body: FutureBuilder<List<Words>>(
        future: isSearching ? search(searchWord) : getAllWord(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var list = snapshot.data;
            return ListView.builder(
              itemCount: list!.length,
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
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${word.eng}",
                              style: TextStyle(fontWeight: FontWeight.bold),
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
          } else {
            return Center();
          }
        },
      ),
    );
  }
}
