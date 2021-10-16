//import 'dart:html';

import 'package:aswaamozhela/widgets/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:aswaamozhela/constans.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late bool isSearching = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
        backgroundColor: KPrimaryColor,
        title: isSearching
            ? Text('')
            : TextField(
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Can I help you",
                    hintStyle: TextStyle(color: Colors.white)),
              ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        elevation: 0.0,
        leading: isSearching
            ? IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    this.isSearching = false;
                  });
                },
              )
            : IconButton(
                icon: Icon(Icons.cancel),
                onPressed: () {
                  setState(() {
                    this.isSearching = true;
                  });
                },
              ));
  }
}
