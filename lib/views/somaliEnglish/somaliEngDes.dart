import 'package:flutter/material.dart';
import 'package:semolina/models/somaliEngModel.dart';
import 'package:semolina/utils/constants.dart';

class SomaliEnglishDes extends StatelessWidget {
  final SomaliEngWord somaliEngWord;
  const SomaliEnglishDes({super.key, required this.somaliEngWord});

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
                somaliEngWord.word,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 52,
                    color: primaryColor),
              ),
              SizedBox(height: 5),
              Text(
                somaliEngWord.partOfSpeech,
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
                  itemCount: somaliEngWord.definitions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      somaliEngWord.definitions[index],
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
