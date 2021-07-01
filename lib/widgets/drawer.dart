import 'package:amazonclone/screens/cart_screen.dart';
import 'package:amazonclone/screens/home_screen.dart';
import 'package:amazonclone/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://pbs.twimg.com/profile_images/669103856106668033/UF3cgUk4_400x400.jpg";
    return Drawer(
        child: Container(
      color: Color.fromARGB(255, 141, 221, 220),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              margin: EdgeInsets.zero,
              accountName: Text("Jeff Bezos"),
              accountEmail: Text("JeffBezos@ril.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
            leading: Icon(
              CupertinoIcons.cart,
              color: Colors.white,
            ),
            title: Text(
              "My Cart",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            leading: Icon(
              CupertinoIcons.cube_box_fill,
              color: Colors.white,
            ),
            title: Text(
              "My Orders",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 250,
            ),
          ),
          ListTile(
            tileColor: Colors.cyan,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Authen()),
              );
            },
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              "Log Out",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
