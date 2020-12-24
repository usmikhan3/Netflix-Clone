import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/responsive/size_config.dart';
import 'package:netflix_clone/screens/cominSoon.dart';
import 'package:netflix_clone/screens/download.dart';
import 'package:netflix_clone/screens/home_screen.dart';
import 'package:netflix_clone/screens/more.dart';
import 'package:netflix_clone/screens/search.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: Page(),
        );
      });
    });
  }
}

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  void onTap(int pageValue) {
    setState(() {
      selectedIndex = pageValue;
    });
    pageController.jumpToPage(pageValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/home.png",
              scale: 22,
              color: Colors.white,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Image.asset(
              "assets/search.png",
              scale: 22,
              color: Colors.white,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Image.asset(
              "assets/coming.png",
              scale: 22,
              color: Colors.white,
            ),
            label: "Coming Soon",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Image.asset(
              "assets/download.png",
              scale: 22,
              color: Colors.white,
            ),
            label: "Download",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black87,
            icon: Image.asset(
              "assets/more.png",
              scale: 22,
              color: Colors.white,
            ),
            label: "More",
          ),
        ],
        selectedLabelStyle:
            TextStyle(fontSize: 1.536312849 * SizeConfig.textMultiplier),
        selectedFontSize: 1.792364990 * SizeConfig.textMultiplier,
        selectedItemColor: Colors.white,
        unselectedFontSize: 1.536312849 * SizeConfig.textMultiplier,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.black87),
        onTap: onTap,
      ),
      body: PageView(
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          children: [
            HomePage(),
            SearchPage(),
            ComingSoon(),
            DownloadPage(),
            MorePage()
          ]),
    );
  }
}
