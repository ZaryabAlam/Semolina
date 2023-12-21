import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings")
              .animate()
              .fadeIn(delay: 200.ms, duration: 200.ms)
              .slideY(duration: 200.ms),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Text("Semolina")
                  .animate()
                  .fadeIn(delay: 200.ms, duration: 500.ms),
              Text("Somali Dictionary",
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.black87,
                      fontSize: 14)),
              SizedBox(height: 120),
              Container(
                width: 120,
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue,
                  // color: themeProvider.isDarkMode ? Colors.blueGrey : Colors.blue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.sunny, // Sun icon
                      color: Colors.yellow, // Customize sun icon color
                    ),
                    CupertinoSwitch(
                      activeColor: Colors.black.withOpacity(0.09),
                      value: true,
                      // value: themeProvider.isDarkMode,
                      onChanged: (value) {
                        // final provider =
                        // Provider.of<ThemeProvider>(context, listen: false);
                        // provider.toggleTheme(value);
                      },
                    ),
                    Icon(
                      Icons.nights_stay, // Moon icon
                      color: Colors.white, // Customize moon icon color
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
