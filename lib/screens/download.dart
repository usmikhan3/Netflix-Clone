import 'package:flutter/material.dart';
import 'package:netflix_clone/responsive/size_config.dart';

class DownloadPage extends StatefulWidget {
  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    final String condition = "ON";
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Row(
          children: [
            IconButton(
              icon: Image.asset(
                "assets/info.png",
                color: Colors.white,
                scale: 22.0,
              ),
              onPressed: () {},
            ),
            Text(
              "Smart Downloads",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 2.304469273 * SizeConfig.textMultiplier),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 2.03703703 * SizeConfig.widthMultiplier),
              child: Text(
                condition,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 2.5605214 * SizeConfig.textMultiplier),
              ),
            )
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 15.8026072 * SizeConfig.heightMultiplier),
                child: Image.asset(
                  "assets/download.png",
                  color: Colors.grey,
                  scale: 3,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 2.5605214450 * SizeConfig.heightMultiplier),
                child: Text(
                  "Movies and Tv Shows that You \n       download appear here",
                  style: TextStyle(color: Colors.grey, fontSize: 2.3044692737 * SizeConfig.textMultiplier),
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(top: 12.80260722 * SizeConfig.heightMultiplier),
                child: Container(
                  height: 4.48091252 * SizeConfig.heightMultiplier,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: MaterialButton(onPressed: (){},
                  child: Text("Find Something to download"),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
