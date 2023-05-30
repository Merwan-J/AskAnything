import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final fontSize = Theme.of(context).textTheme.bodySmall!.fontSize;
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            height: 80.h,
            child: DrawerHeader(
              child: Row(
                children: [
                  Icon(Icons.grid_view_rounded),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    'Admin Dashboard',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text(
              'All Users',
              style: TextStyle(fontSize: fontSize),
            ),
            onTap: () {
              // Handle end drawer item 1 tap
            },
          ),
          ListTile(
            leading: Icon(Icons.admin_panel_settings),
            title: Text(
              'Admin User',
              style: TextStyle(fontSize: fontSize),
            ),
            onTap: () {
              // Handle end drawer item 2 tap
            },
          ),
          ListTile(
            leading: Icon(Icons.hourglass_bottom),
            title: Text(
              'Pending questions',
              style: TextStyle(fontSize: fontSize),
            ),
            onTap: () {
              // Handle end drawer item 2 tap
            },
          ),
        ],
      ),
    );
  }
}
