import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final ImgUrl =
      "https://media.licdn.com/dms/image/C4E03AQFI6qP2fWoxtg/profile-displayphoto-shrink_800_800/0/1608289907574?e=1709164800&v=beta&t=U-w0ScIr1nvahkWlbjbFJNdB_7XEvpqTbwExLLi9QdY";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 23.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            // decoration: BoxDecoration(color: Colors.white),
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text(
                "Bhupendra Makdoe",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                "bhuupendramakode999@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
              // currentAccountPicture: Image.network(ImgUrl),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(ImgUrl),
              ),
            ),
          ),
          //Items of list
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.black),
            title: Text("HOME", style: TextStyle(color: Colors.black)
                // textScaleFactor: 1.5,
                ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.person_fill, color: Colors.black),
            title: Text("PROFILE", style: TextStyle(color: Colors.black)
                // textScaleFactor: 1.5,
                ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.black),
            title: Text("Email Me", style: TextStyle(color: Colors.black)
                // textScaleFactor: 1.5,
                ),
          ),
        ],
      ),
    );
  }
}
