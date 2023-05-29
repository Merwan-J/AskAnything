import 'package:flutter/material.dart';

import 'app_bar.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: App_Bar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // add your FAB action here
          },
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.white,
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          // color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: BottomAppBar(
            child: Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  color: const Color.fromARGB(255, 255, 115, 92),
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: null,
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  icon: Icon(
                    Icons.bookmark_border,
                  ),
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(
                    Icons.person,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
        ));
  }
}
