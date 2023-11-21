import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:semolina/views/aboutPage.dart';
import 'package:semolina/views/home.dart';
import 'package:semolina/views/wordPage.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  bool isLoading = false;

  static List<Widget> _pages = <Widget>[Home(), WordPage(), AboutPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: myNavigationBar(),
    );
  }

////////////////////////////////Navigation Bar//////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
  Widget myNavigationBar() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          // color: Colors.grey[50],
          color: Color.fromARGB(121, 0, 0, 0),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          )),
      padding: EdgeInsets.all(1),
      child: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(color: Colors.black, size: 22),
        backgroundColor: Colors.transparent,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        selectedFontSize: 10,
        iconSize: 20,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? const FaIcon(FontAwesomeIcons.houseChimney)
                : const Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? FaIcon(FontAwesomeIcons.solidRectangleList)
                : FaIcon(FontAwesomeIcons.rectangleList),
            label: 'WordBank',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? const FaIcon(FontAwesomeIcons.solidUser)
                : const Icon(Icons.person_outline_rounded),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
