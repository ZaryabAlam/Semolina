import 'package:flutter/material.dart';

const mongoURL =
    "mongodb+srv://Test_Username:test12345678@cluster0.x4ixm6x.mongodb.net/Dictionary?retryWrites=true&w=majority";
const mongoCollection = "somali-somali";

Color primaryColor = Color.fromARGB(255, 123, 195, 221);
Color secondaryColor = Colors.blueGrey;
Color white = Colors.white;
Color primaryTextColor = Color(0xFF414C6B);
Color secondaryTextColor = Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = Color(0xff868686);
Color navigationColor = Color(0xFF6751B5);
Color gradientStartColor = Color(0xFF0050AC);
Color gradientEndColor = Color(0xFF9354B9);
Color dividerColor = Colors.black38;
Color transparent = Colors.transparent;
Color infoDialogColor = Colors.blueGrey.shade500;
//Color.fromARGB(255, 102, 200, 235);
late double w, h;

void HeightWidth(BuildContext context) {
  h = MediaQuery.of(context).size.height;
  w = MediaQuery.of(context).size.width;
}

class RoundedContainer extends StatelessWidget {
  final Color? color;
  final double? h;
  final double? w;
  final Widget? child;
  const RoundedContainer({Key? key, this.h, this.w, this.color, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h ?? 10,
      width: w ?? 10,
      decoration: BoxDecoration(
          color: color ?? Colors.red, borderRadius: BorderRadius.circular(13)),
      child: child ?? null,
    );
  }
}

class LanguageBoxChild extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final String? text1;
  final String? text2;
  const LanguageBoxChild(
      {Key? key, this.icon, this.iconColor, this.text1, this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor ?? primaryColor),
          SizedBox(height: 10),
          Text("$text1", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("$text2")
        ],
      ),
    );
  }
}
