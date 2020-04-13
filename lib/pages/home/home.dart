import 'package:flutter/material.dart';
import 'homeprofile.dart';
import 'search.dart';
import 'rent.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  List<Widget> pages = <Widget>[
    profile_pg(),
    Search_pg(),
    RentRoom_pg(),
  ];

  final List<Tab> myTabs = <Tab>[
    Tab( text: 'My profile' ),
    Tab( text: 'Search' ),
    Tab( text: 'Room')
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //tabs length
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),

        body: TabBarView(
            children: pages
        ),
      ),
    );

  }
}
