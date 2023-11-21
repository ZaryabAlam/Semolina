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
        title: Text("Semolina Dictionary"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.info_outline,
              color: primaryColor,
              size: 64,
            ),
            Text("Coming Soon!")
          ],
        ),
      ),
    );
  }
}
