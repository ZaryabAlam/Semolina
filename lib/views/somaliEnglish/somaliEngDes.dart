import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:semolina/models/somaliEngModel.dart';
import 'package:semolina/utils/constants.dart';

class SomaliEnglishDes extends StatelessWidget {
  final SomaliEngWord somaliEngWord;
  const SomaliEnglishDes({super.key, required this.somaliEngWord});

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
                        somaliEngWord.word,
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
                    Text(
                      somaliEngWord.partOfSpeech,
                      style:
                          TextStyle(fontWeight: FontWeight.w100, fontSize: 18),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    Text(
                      "Definition",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: primaryColor),
                    ),
                    SizedBox(height: 20),
                    ListView.builder(
                     padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: somaliEngWord.definitions.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              somaliEngWord.definitions[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w100, fontSize: 18),
                            ),
                            SizedBox(height: 10)
                          ],
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
