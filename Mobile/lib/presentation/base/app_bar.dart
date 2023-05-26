import 'package:askanything/presentation/base/bottomBar.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class App_Bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                //TODO: change to the target page
                MaterialPageRoute(builder: (context) => BottomBar()),
              );
            },
            child: Text(
              'Following',
              style: TextStyle(
                fontSize: 18.0,
                color: Color.fromRGBO(255, 115, 92, 1),
              ),
            ),
          ),
          SizedBox(width: 16.0),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                //TODO: change to the target page
                MaterialPageRoute(builder: (context) => BottomBar()),
              );
            },
            child: Text(
              'Explore',
              style: TextStyle(
                fontSize: 18.0,
                color: Color.fromRGBO(56, 90, 100, 1),
              ),
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
            color: Color.fromRGBO(56, 90, 100, 1),
            onPressed: () {},
            icon: Icon(Icons.search))
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
