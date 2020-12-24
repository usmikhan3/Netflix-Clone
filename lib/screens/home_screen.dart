import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_clone/responsive/size_config.dart';
import 'package:netflix_clone/screens/detail_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  routeToDetail(DocumentSnapshot info){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>DetailPage(info: info,)));
  }

  Future getDataPopular() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    QuerySnapshot querySnapshot =
        await firebaseFirestore.collection('popular').get();
    return querySnapshot.docs;
  }

  Future getDataAnimated() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    QuerySnapshot querySnapshot =
        await firebaseFirestore.collection('animated').get();
    return querySnapshot.docs;
  }

  Future getDataOriginals() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    QuerySnapshot querySnapshot =
        await firebaseFirestore.collection('originals').get();
    return querySnapshot.docs;
  }
  Future getDataKdramas() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    QuerySnapshot querySnapshot =
    await firebaseFirestore.collection('kdramas').get();
    return querySnapshot.docs;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [

          //TODO: APPBAR
          SliverAppBar(
            backgroundColor: Colors.black,
            leading: Image.asset(
              'assets/netflix_icon.png',
              scale: 20.0,
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 2.81944444 * SizeConfig.widthMultiplier),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Tv Shows",
                    style: TextStyle(color: Colors.white, fontSize: 2.304469273 * SizeConfig.textMultiplier),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 3.81944444 * SizeConfig.widthMultiplier),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Movies",
                    style: TextStyle(color: Colors.white, fontSize: 2.304469273 * SizeConfig.textMultiplier),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 3.81944444 * SizeConfig.widthMultiplier),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "My List",
                    style: TextStyle(color: Colors.white, fontSize: 2.304469273 * SizeConfig.textMultiplier),
                  ),
                ),
              )
            ],
          ),
          //TODO: POSTER IMAGE
          SliverToBoxAdapter(
            child: Container(
              height: 32.00651769091248 *  SizeConfig.heightMultiplier,
              child: Image.asset("assets/bg.jpg"),
            ),
          ),

          //TODO: ROW FOR MY LIST, PLAY AND INFO
          SliverToBoxAdapter(
              child: Padding(
            padding:  EdgeInsets.only(top: 1.92039106  *SizeConfig.heightMultiplier),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.add,
                        size: 3.840782122 * SizeConfig.heightMultiplier,
                        color: Colors.white,
                      ),
                      Text(
                        "My List",
                        style: TextStyle(color: Colors.white, fontSize: 2.5605214 * SizeConfig.textMultiplier),
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
                        style: TextStyle(color: Colors.black, fontSize: 2.304469273 * SizeConfig.textMultiplier),
                      )),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/info.png",
                        scale: 22.0,
                        color: Colors.white,
                      ),
                      Text(
                        "Info",
                        style: TextStyle(color: Colors.white, fontSize: 2.5605214152 * SizeConfig.textMultiplier),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),


          //TODO: CONTINUE WATCHING
          SliverToBoxAdapter(
            child: SizedBox(
              height: 35.8472998 * SizeConfig.heightMultiplier,
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 2.56052141527 * SizeConfig.heightMultiplier, right: 25.92727272 * SizeConfig.widthMultiplier),
                    child: Text(
                      "Continue Watching for MuK",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 2.5605214152 * SizeConfig.textMultiplier),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 1.9203910614 * SizeConfig.heightMultiplier),
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 3.81944444444 * SizeConfig.widthMultiplier),
                          child: SizedBox(
                            width: 25.462963 * SizeConfig.widthMultiplier,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 19.2039106 * SizeConfig.heightMultiplier,
                                  width: 38.1944444 * SizeConfig.widthMultiplier,
                                  child: Image.asset("assets/poster1.jpg"),
                                ),
                                LinearProgressIndicator(
                                  value: 50,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        icon: Image.asset(
                                          "assets/info.png",
                                          scale: 22.0,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {}),
                                    IconButton(
                                        icon: Image.asset(
                                          "assets/menu.png",
                                          scale: 22.0,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {})
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 1.92039106 * SizeConfig.widthMultiplier),
                          child: SizedBox(
                            width: 25.4629629 * SizeConfig.widthMultiplier,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 19.20391061 * SizeConfig.heightMultiplier,
                                  width: 38.1944444 * SizeConfig.widthMultiplier,
                                  child: Image.asset("assets/poster2.jpg"),
                                ),
                                LinearProgressIndicator(
                                  value: 12.7314815 * SizeConfig.widthMultiplier,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        icon: Image.asset(
                                          "assets/info.png",
                                          scale: 22.0,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {}),
                                    IconButton(
                                        icon: Image.asset(
                                          "assets/menu.png",
                                          scale: 22.0,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {})
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          //TODO: POPULAR
          SliverToBoxAdapter(
            child: SizedBox(
              height: 25.6052141 * SizeConfig.heightMultiplier,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 61.1111112 * SizeConfig.widthMultiplier),
                    child: Text(
                      "Popular on Netflix",
                      style: TextStyle(
                          fontSize: 2.30446927 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 21.76443203 * SizeConfig.heightMultiplier,
                    child: FutureBuilder(
                      future: getDataPopular(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Lottie.asset("animations/loading.json");
                        } else {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: ()=>routeToDetail(snapshot.data[index]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 12.802607 * SizeConfig.heightMultiplier,
                                      width: 25.462962963 * SizeConfig.widthMultiplier,
                                      child: Image.network(
                                        snapshot.data[index].data()['image'],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),


          //TODO: ANIMATED
          SliverToBoxAdapter(
            child: SizedBox(
              height: 25.6052141 * SizeConfig.heightMultiplier,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 76.3888890 * SizeConfig.widthMultiplier),
                    child: Text(
                      "Animated",
                      style: TextStyle(
                          fontSize: 2.3044692737 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 21.76443203 * SizeConfig.heightMultiplier,
                    child: FutureBuilder(
                      future: getDataAnimated(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Lottie.asset("animations/loading.json");
                        } else {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: ()=>routeToDetail(snapshot.data[index]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 12.80260707 * SizeConfig.heightMultiplier,
                                      width: 25.46296296 * SizeConfig.widthMultiplier,
                                      child: Image.network(
                                        snapshot.data[index].data()['image'],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),

          //TODO: ORIGINALS
          SliverToBoxAdapter(
            child: SizedBox(
              height: 25.6052141 * SizeConfig.heightMultiplier,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 61.11111122 * SizeConfig.widthMultiplier),
                    child: Text(
                      "Netflix Originals",
                      style: TextStyle(
                          fontSize: 2.30446927 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 21.764432032328 * SizeConfig.heightMultiplier,
                    child: FutureBuilder(
                      future: getDataOriginals(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Lottie.asset("animations/loading.json");
                        } else {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: ()=>routeToDetail(snapshot.data[index]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 12.8026070778 * SizeConfig.heightMultiplier,
                                      width: 25.46296296 * SizeConfig.widthMultiplier,
                                      child: Image.network(
                                        snapshot.data[index].data()['image'],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),

          //TODO: K DRAMAS
          SliverToBoxAdapter(
            child: SizedBox(
              height: 32.0065176 * SizeConfig.heightMultiplier,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 76.388889030 * SizeConfig.widthMultiplier, top: 1.920391061 * SizeConfig.heightMultiplier),
                    child: Text(
                      "K Dramas",
                      style: TextStyle(
                          fontSize: 2.30446927 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 21.764432032 * SizeConfig.heightMultiplier,
                    child: FutureBuilder(
                      future: getDataKdramas(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Lottie.asset("animations/loading.json");
                        } else {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap:()=>routeToDetail(snapshot.data[index]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 12.802607 * SizeConfig.heightMultiplier,
                                      width: 25.4629629 * SizeConfig.widthMultiplier,
                                      child: Image.network(
                                        snapshot.data[index].data()['image'],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
