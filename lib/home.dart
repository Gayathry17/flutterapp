import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/screens/maindrawer.dart';

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn',style: TextStyle(
            fontSize: 40,
            fontFamily: 'Signatra'),),
      ),
      drawer: MainDrawer(),
      body: Container(
        padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Hello!!",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.blueAccent,
                    fontFamily: 'Signatra'
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/profile_image.png'))),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Ready to explore...",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Signatra',
              fontSize: 60,
            ),),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                        ],
                      )
                    )
                  ],
                ),

              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child:Align(
                heightFactor: 5,
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.blueAccent,
                        size: 40,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        debugPrint("Subscription button clicked");
                      },
                      icon: Icon(
                        Icons.subscriptions,
                        color: Colors.blueAccent,
                        size: 40,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        debugPrint("Discuss button clicked");
                      },
                      icon: Icon(
                        Icons.mode_comment,
                        color: Colors.blueAccent,
                        size: 40,
                      ),
                    ),

                  ],
                ),

              ))
                ],
              ),
            )
        );
  }
}

