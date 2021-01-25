import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/responsive/size_config.dart';
import 'package:netflix_clone/screens/home_screen.dart';
import 'package:netflix_clone/widgets/video.dart';

class DetailPage extends StatefulWidget {
  final DocumentSnapshot info;

  const DetailPage({this.info});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            widget.info.data()['image'],
                          ),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black87, BlendMode.darken))),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.401303538 * SizeConfig.heightMultiplier),
                        child: SizedBox(
                          height: 32.0065176 * SizeConfig.heightMultiplier,
                          width: 38.19444451 * SizeConfig.widthMultiplier,
                          child: Image.network(widget.info.data()['image']),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            widget.info.data()['match'],
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.info.data()['year'],
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.grey),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.info.data()['age'],
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            widget.info.data()['season/time'],
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: FlatButton.icon(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => VideoPlayer(
                                              videoData:
                                                  widget.info.data()['trailer'],
                                            )));
                              },
                              icon: Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                              ),
                              label: Text(
                                "Play",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 2.04841713 * SizeConfig.textMultiplier),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 4.48091247 * SizeConfig.heightMultiplier,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade500.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(5)),
                          child: FlatButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.download_rounded,
                                color: Colors.white,
                              ),
                              label: Text(
                                "Download",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 2.3044692740 * SizeConfig.textMultiplier),
                              )),
                        ),
                      ),
                      Padding(
                        padding:
                             EdgeInsets.only(top: 2.3044692740 * SizeConfig.heightMultiplier, right: 2.037037040 * SizeConfig.widthMultiplier, left: 2.037037040 * SizeConfig.widthMultiplier),
                        child: Container(
                            height: 6.40130353892 * SizeConfig.heightMultiplier,
                            child: Text(
                              widget.info.data()['info'],
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                            top: 2.304469274 * SizeConfig.heightMultiplier, right: 45.83333341820988 * SizeConfig.widthMultiplier, left: 2.037037040 * SizeConfig.widthMultiplier),
                        child: Container(
                            height: 6.4013035389 * SizeConfig.heightMultiplier,
                            child: Text(
                              widget.info.data()['starring'],
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      Row(
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top: 1.02420857 * SizeConfig.heightMultiplier),
                                  child: Text(
                                    "My List",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Icon(
                                  Icons.thumb_up,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top: 1.02420857 * SizeConfig.heightMultiplier),
                                  child: Text(
                                    "Rate",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Icon(
                                  Icons.share,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top: 1.02420857 * SizeConfig.heightMultiplier),
                                  child: Text(
                                    "Share",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade500,
                      )
                    ],
                  ),
                ),
              ),
              expandedHeight: 74.2551219 * SizeConfig.heightMultiplier,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
              )),
        ],
      ),
    );
  }
}
