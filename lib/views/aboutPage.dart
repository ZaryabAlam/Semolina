import 'package:flutter/material.dart';
import 'package:semolina/utils/constants.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asal Dictionary"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              child: Image(image: AssetImage("assets/info_icon.png")),
            ),
            SizedBox(height: 10),
            Text("Coming Soon!")
          ],
        ),
      ),
    );
  }
}
