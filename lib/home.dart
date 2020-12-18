import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutterapp/screens/maindrawer.dart';
import 'package:flutterapp/screens/searchscreen.dart';

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Learn',
            style: TextStyle(fontSize: 40, fontFamily: 'Signatra'),
          ),
          actions: [
            IconButton(icon: Icon(Icons.search),
            onPressed: (){
              showSearch(
                  context: context, delegate: DataSearch());
            },)
          ],
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
                        fontFamily: 'Signatra'),
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
              Text(
                "Ready to explore...",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Signatra',
                  fontSize: 60,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}



