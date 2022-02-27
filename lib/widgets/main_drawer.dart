
import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters_screen.dart';
import 'dart:core';

class MainDrawer extends StatelessWidget {
  //! disini kita tidak bisa menggunakan Global widget karna akan membua fuction
  //! on tap bermasalah
  //   Widget buildListTile(String title, IconData icon, Function() tapHandler) {
  //   return ListTile(
  //     leading: Icon(
  //       icon,
  //       size: 26,
  //     ),
  //     title: Text(
  //       title,
  //       style: TextStyle(
  //         fontFamily: 'RobotoCondensed',
  //         fontSize: 24,
  //         fontWeight: FontWeight.bold,
  //       ),
  //     ),
  //     onTap: tapHandler(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
            ),
            title: Text(
              'Meals',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: (){
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: (){
              Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
          // buildListTile(
          //   "Meals",
          //   Icons.restaurant,
          //   () {
          //     Navigator.of(context).pushNamed('/');
          //   },
          // ),
          // buildListTile("Settings", Icons.settings,(){
          //  return Navigator.of(context).pushNamed(FiltersScreen.routeName);
          // })
        ],
      ),
    );
  }
}
