import 'package:flutter/material.dart';
import 'package:semolina/models/somaliSomaliModel.dart';
import 'package:semolina/utils/constants.dart';

class SomaliSomaliDes extends StatelessWidget {
  final SomaliSomaliWord somaliSomaliWord;
  const SomaliSomaliDes({super.key, required this.somaliSomaliWord});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Semolina Dictionary"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                somaliSomaliWord.word,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 52,
                    color: primaryColor),
              ),
              SizedBox(height: 5),
              Text(
                somaliSomaliWord.partOfSpeech,
                style: TextStyle(fontWeight: FontWeight.w100, fontSize: 18),
              ),
              Divider(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Definition",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: primaryColor),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: somaliSomaliWord.definitions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      somaliSomaliWord.definitions[index],
                      style:
                          TextStyle(fontWeight: FontWeight.w100, fontSize: 18),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
