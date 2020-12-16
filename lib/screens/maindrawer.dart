import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              color: Theme.of(context).primaryColor,
              child: Center(
                  child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile_image.png'),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Name ',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Signatra',
                            fontSize: 30),
                      )),
                  Text(
                    'mailid@gmail.com',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Signatra',
                        fontSize: 20),
                  )
                ],
              ))),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 20),
            ),
            onTap: (){
              debugPrint("Profile");
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 20),
            ),
            onTap: (){
              debugPrint("Settings");
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text(
              'Invite Friends',
              style: TextStyle(fontSize: 20),
            ),
            onTap: (){
              debugPrint("Invite friends");
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 20),
            ),
            onTap: (){
              debugPrint("Logout");
            },
          )
        ],
      ),
    );
  }
}
