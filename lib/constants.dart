import 'package:flutter/material.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.red[800],
  title: Text('Pinterest Dashboard'),
);

var myDrawer = Drawer(
  backgroundColor: Colors.red[50],
  child: Column(
    children: [
      DrawerHeader(
          child: Icon(
        Icons.favorite,
        color: Colors.red[800],
      )),
      ListTile(
        leading: Icon(Icons.home),
        title:
            Text('Dashboard'.toUpperCase(), style: TextStyle(letterSpacing: 6)),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text('Chat'.toUpperCase(), style: TextStyle(letterSpacing: 6)),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title:
            Text('Settings'.toUpperCase(), style: TextStyle(letterSpacing: 6)),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('Logout'.toUpperCase(), style: TextStyle(letterSpacing: 6)),
      )
    ],
  ),
);
