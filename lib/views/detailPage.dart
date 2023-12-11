import 'package:flutter/material.dart';
import 'package:semolina/models/Words.dart';
import 'package:semolina/utils/constants.dart';

class DetailPage extends StatefulWidget {
  Words word;

  DetailPage(this.word);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Semolina Dictionary"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("English:"),
            Divider(),
            Text(
              "${widget.word.eng}",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            Text("Somali:"),
            Divider(),
            Text(
              "${widget.word.tur}",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
