import 'package:askanything/presentation/base/app_bar.dart';
import 'package:flutter/material.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Bookmarks'),
        body: Container(
          child: Center(
            child: Text("Bookmark Page"),
          ),
        ));
  }
}
