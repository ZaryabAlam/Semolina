import 'package:flutter/material.dart';
import 'package:semolina/models/somaliSomaliModel.dart';

import '../utils/constants.dart';

class SomaliSomaliPage extends StatefulWidget {
  const SomaliSomaliPage({super.key});

  @override
  State<SomaliSomaliPage> createState() => _SomaliSomaliPageState();
}

class _SomaliSomaliPageState extends State<SomaliSomaliPage> {
  final TextEditingController _searchController = TextEditingController();

  List<SomaliSomaliWord> filteredWords = [];

  void filterWords(String query) {
    setState(() {
      filteredWords = words
          // ignore: non_constant_identifier_names
          .where((SomaliSomaliWord) =>
              SomaliSomaliWord.word.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  void initState() {
    filteredWords = [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Somali-Somali"),
      ),
      body: Column(children: [
        Container(
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
        SizedBox(height: 10),
        if (_searchController.text.isNotEmpty && filteredWords.isNotEmpty)
          Expanded(
            child: ListView.builder(
              itemCount: filteredWords.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(15)),
                      child: Material(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     PageRouteBuilder(
                            //       pageBuilder: (context, a, b) =>
                            //           DetailPage(
                            //               planetInfo:
                            //                   filteredPlanets[index]),
                            //     ));
                          },
                          child: ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image(
                                image: AssetImage(filteredWords[index].word),
                                fit: BoxFit.contain,
                              ),
                            ),
                            title: Text(
                              filteredWords[index].word,
                              // style: newStyle(FontWeight.w600, 18,
                              //     Colors.black54),
                            ),
                            subtitle: Text(
                              filteredWords[index].partOfSpeech,
                              // style: newStyle(FontWeight.w500, 15,
                              //     Colors.black45),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.white54,
                    ),
                  ],
                );
              },
            ),
          )
        else
          _searchController.text.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 120),
                      Icon(
                        Icons.search_rounded,
                        color: primaryColor,
                        size: 64,
                      ),
                      Text("Search Something!"),
                    ],
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 120),
                      Icon(
                        Icons.search_off_rounded,
                        color: primaryColor,
                        size: 64,
                      ),
                      Text("No Result Found!")
                    ],
                  ),
                )
      ]),
    );
  }
}
