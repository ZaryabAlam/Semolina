import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:semolina/models/engSomaliModel.dart';
import 'package:semolina/utils/constants.dart';

class EnglishSomaliDes extends StatelessWidget {
  final EngSomaliWord engSomaliWord;
  const EnglishSomaliDes({super.key, required this.engSomaliWord});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          title: Text("Semolina Dictionary")
              .animate()
              .fadeIn(delay: 200.ms, duration: 200.ms)
              .slideY(duration: 200.ms),
          backgroundColor: transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 50),
              Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    primaryColor,
                    primaryColor.withOpacity(0.6),
                  ],
                )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Animate(
                      effects: [FadeEffect(duration: 600.ms)],
                      child: Text(
                        engSomaliWord.word,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 52,
                            color: white),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Divider(
                        color: white,
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),

              // SizedBox(height: 5),
              // Divider(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Somali:",
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
