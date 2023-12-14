import 'package:flutter/material.dart';
import 'package:semolina/models/engSomaliModel.dart';
import 'package:semolina/utils/constants.dart';

class EnglishSomaliDes extends StatelessWidget {
  final EngSomaliWord engSomaliWord;
  const EnglishSomaliDes({super.key, required this.engSomaliWord});

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
              // SizedBox(height: 50),
              Text(
                engSomaliWord.word,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 52,
                    color: primaryColor),
              ),
              SizedBox(height: 5),
              Divider(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Translation",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: primaryColor),
                  ),
                  Container(
                    height: 100,
                    width: 150,
                    child: Center(
                      child: Text(
                        engSomaliWord.meaning,
                        style: TextStyle(
                            fontWeight: FontWeight.w100, fontSize: 30),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
