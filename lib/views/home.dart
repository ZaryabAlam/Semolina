import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:semolina/utils/constants.dart';
import 'package:semolina/views/cloud/somaliWord.dart';
import 'package:semolina/views/englishSomali/engSomaliPage.dart';
import 'package:semolina/views/settingsPage.dart';
import 'package:semolina/views/somaliEnglish/somaliEngPage.dart';
import 'package:semolina/views/somaliSomali/somaliSomPage.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    HeightWidth(context);

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // systemOverlayStyle: SystemUiOverlayStyle(
          //   // Status bar color
          //   statusBarColor: Colors.transparent,

          //   // Status bar brightness (optional)
          //   statusBarIconBrightness:
          //       Brightness.dark, // For Android (dark icons)
          //   statusBarBrightness: Brightness.light, // For iOS (dark icons)
          // ),
          // automaticallyImplyLeading: true,
          titleSpacing: 0.0,
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.workspaces_filled),

          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          title: Text(
            "Asal Dictionary",
            style: TextStyle(color: Colors.white),
          )
              .animate()
              .fadeIn(delay: 200.ms, duration: 200.ms)
              .then() // sets own delay to 800ms (300+500)
              .slide(duration: 200.ms),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu_open_rounded, color: Colors.white),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
        endDrawer: MyEndDrawer(),
        body: Stack(
          children: [
            Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/background02.jpg"))),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black87,
                      Color.fromARGB(143, 255, 255, 255)
                    ],
                  )),
                )),
            ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: h * 0.05),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/logo/logo_full.png")),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Experience  Somalia's\nown Dictionary App",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).animate().fadeIn(delay: 200.ms, duration: 500.ms),
                          SizedBox(height: h * 0.02),
                          Text(
                              "Clear  and  simple meaning in English & Somali from language experts. More usage examples than any other dictionary.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                    SizedBox(height: h * 0.05),
                    Hero(
                      tag: 'searchbar-tag',
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 55,
                        color: Colors.transparent,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              shadowColor: Colors.black,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)),
                              primary: Colors.black,
                              backgroundColor: primaryColor,
                              minimumSize: Size.fromHeight(70)),
                          onPressed: () {
                            // Get.to(() => SearchPage());
                            Get.to(() => EnglishSomaliPage());
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.search, color: Colors.white),
                                SizedBox(width: 10),
                                Text("Search",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white)),
                                Spacer(),
                                Icon(Icons.chevron_right_rounded,
                                    color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: h * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeSmallButton(
                          text1: "English —",
                          text2: "Somali",
                          icon: Icons.g_translate,
                          myOnPress: () {
                            // blurSnackbar();
                            Get.to(() => EnglishSomaliPage());
                          },
                        ),
                        HomeSmallButton(
                          text1: "Somali —",
                          text2: "English",
                          icon: Icons.g_translate,
                          myOnPress: () {
                            // blurSnackbar();
                            Get.to(() => SomaliEnglishPage());
                          },
                        ),
                        HomeSmallButton(
                          text1: "Somali —",
                          text2: "Somali",
                          icon: Icons.g_translate,
                          myOnPress: () {
                            // blurSnackbar();
                            Get.to(() => SomaliSomaliPage());
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    HomeSmallButton(
                      text1: "Cloud",
                      text2: "",
                      icon: Icons.g_translate,
                      myOnPress: () {
                        // blurSnackbar();
                        Get.to(() => SomaliCloud());
                      },
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ],
            ),
          ],
        ));
  }

// Custom Coming Soon Warning Snackbar blurred
  SnackbarController blurSnackbar() {
    return Get.snackbar("Coming Soon", "Work in progress!",
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        borderWidth: 1.0,
        borderColor: Colors.white24,
        icon: Icon(
          Icons.warning_rounded,
          size: 28,
        ),
        backgroundColor: Colors.white12,
        snackPosition: SnackPosition.BOTTOM);
  }
}

class MyEndDrawer extends StatelessWidget {
  const MyEndDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(color: primaryColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text("Semolina"),
                      Text("Somali Dictionary",
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              color: Colors.black87,
                              fontSize: 14)),
                    ],
                  )),
              ListTile(
                leading: Icon(
                  Icons.settings,
                ),
                title: const Text('Settings'),
                onTap: () {
                  Get.to(() => SettingsPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom Rounded small buttons (Translation Category)
class HomeSmallButton extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final String? text1;
  final String? text2;
  final Function() myOnPress;
  const HomeSmallButton(
      {Key? key,
      this.icon,
      this.iconColor,
      this.text1,
      this.text2,
      required this.myOnPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: transparent,
      child: TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.all(8.0),
            shadowColor: Colors.black38,
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
            primary: Colors.black,
            backgroundColor: white,
            minimumSize: Size.fromHeight(70)),
        onPressed: myOnPress,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(icon ?? Icons.g_translate,
                      color: iconColor ?? primaryColor)),
              SizedBox(height: 10),
              Text("$text1", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("$text2")
            ],
          ),
        ),
      ),
    );
  }
}
