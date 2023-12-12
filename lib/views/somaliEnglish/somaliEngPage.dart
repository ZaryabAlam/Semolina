import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:semolina/models/somaliEngModel.dart';
import 'package:semolina/utils/constants.dart';
import 'package:semolina/views/somaliEnglish/somaliEngDes.dart';

class SomaliEnglishPage extends StatefulWidget {
  const SomaliEnglishPage({super.key});

  @override
  State<SomaliEnglishPage> createState() => _SomaliEnglishPageState();
}

class _SomaliEnglishPageState extends State<SomaliEnglishPage> {
  final TextEditingController _searchController = TextEditingController();

  List<SomaliEngWord> filteredWords = [];

  void filterWords(String query) {
    setState(() {
      filteredWords = words
          // ignore: non_constant_identifier_names
          .where((SomaliEngWord) =>
              SomaliEngWord.word.toLowerCase().contains(query.toLowerCase()))
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
        title: Text("Somali-English")
            .animate()
            .fadeIn(delay: 200.ms, duration: 200.ms)
            .slideY(duration: 200.ms),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      height: 30,
                      width: double.infinity,
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
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, a, b) =>
                                      SomaliEnglishDes(
                                          somaliEngWord: filteredWords[index]),
                                ));
                          },
                          child: Text(
                            filteredWords[index].word,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                        // color: Colors.black,
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
                      SizedBox(height: 20),
                      Container(
                        height: 80,
                        width: 80,
                        child:
                            Image(image: AssetImage("assets/search_icon.png")),
                      ),
                      SizedBox(height: 10),
                      Text("Search Something!"),
                    ],
                  ),
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
                        child:
                            Image(image: AssetImage("assets/cross_icon.png")),
                      ),
                      SizedBox(height: 10),
                      Text("No Result Found!")
                    ],
                  ),
                )
      ]),
    );
  }
}
