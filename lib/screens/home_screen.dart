import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            leading: Image.asset(
              'assets/netflix_icon.png',
              scale: 20.0,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Tv Shows",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Movies",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "My List",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250,
              child: Image.asset("assets/bg.jpg"),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text(
                        "My List",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: FlatButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/play.png",
                        scale: 22.0,
                        color: Colors.black,
                      ),
                      label: Text(
                        "Play",
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      )),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [

                        Image.asset("assets/info.png", scale: 22.0, color: Colors.white,),

                      Text(
                        "Info",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
            ],
          ),
              ))
        ],
      ),
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
        selectedLabelStyle: TextStyle(fontSize: 12),
        selectedFontSize: 14,
        selectedItemColor: Colors.white,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.black87),
        onTap: onTap,
      ),
    );
  }
}
