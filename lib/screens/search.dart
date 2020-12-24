import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_clone/responsive/size_config.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Future getDataSearch() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    QuerySnapshot querySnapshot =
        await firebaseFirestore.collection('search').get();
    return querySnapshot.docs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.search,
          color: Colors.grey,
        ),
        title: TextField(
          decoration: InputDecoration(
              hintText: "Search for movies, tv shows.....",
              hintStyle: TextStyle(color: Colors.white),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.mic,
                  color: Colors.grey,
                ),
                onPressed: () {},
              )),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 50.92592592 * SizeConfig.widthMultiplier),
              child: Text(
                "Popular Searches",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 2.560521445 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.0242085780 * SizeConfig.heightMultiplier),
              child: SizedBox(
                height: 71.6946004 * SizeConfig.heightMultiplier,
                child: FutureBuilder(
                  future: getDataSearch(),
                  builder: (_, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Lottie.asset("animations/loading.json");
                    } else {
                      return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (_, index) {
                            return Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800
                                  ),
                                  child: SizedBox(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 12.20391083 * SizeConfig.heightMultiplier,
                                          width: 25.4629630 * SizeConfig.widthMultiplier,
                                          child: Image.network(
                                            snapshot.data[index].data()['image'],
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Container(
                                          width: 50.9259353 * SizeConfig.widthMultiplier,
                                          child: Text(
                                            snapshot.data[index].data()['name'],
                                            style: TextStyle(color: Colors.white, fontSize:2.3044692737 * SizeConfig.textMultiplier  ),
                                          ),
                                        ),
                                        Icon(Icons.play_arrow, color: Colors.grey,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          });
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
