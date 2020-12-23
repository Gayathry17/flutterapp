import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Widget textfield({@required String text}) {
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
            hintText: text,
            hintStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop(context);
              },
            )),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Profile",
                  style: TextStyle(fontFamily: 'Signatra', fontSize: 50),
                ),
              ),
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_image.png'),
                radius: 60,
                child: Padding(
                    padding: EdgeInsets.only(top: 80, left: 80),
                    child: GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: IconButton(
                          icon: Icon(Icons.edit),
                        ),
                      ),
                      onTap: () {
                        debugPrint("Edit");
                      },
                    )),
              ),
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 30),
                  child: Column(
                    children: [
                      Text(
                        "USERNAME",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text("EmailID")
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Courses Enrolled:",
                        style: TextStyle(fontSize: 30, fontFamily: 'Signatra'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SingleChildScrollView(
                            child: GestureDetector(
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: IconButton(
                                  icon: Icon(Icons.add),
                                ),
                                radius: 20,
                              ),
                              onTap: () {
                                debugPrint("Add");
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10,bottom: 30),
              child: Row(
                children: [
                  Text(
                    "Courses Completed:",
                    style: TextStyle(fontSize: 30, fontFamily: 'Signatra'),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
              child: Row(
                children: [
                  Text(
                    "Grades:",
                    style: TextStyle(fontSize: 30, fontFamily: 'Signatra'),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Row(
                children: [
                  Text(
                    "Certificates:",
                    style: TextStyle(fontSize: 30, fontFamily: 'Signatra'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
