import 'package:flutter/material.dart';
import 'package:librarysystem/components/OurAppBar.dart';
import 'package:librarysystem/components/OurColors.dart';
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

    Tab(

      // text: 'My profile',
      icon: Icon(Icons.person),

    ),
    Tab(
      
      // text: 'Search',
      icon: Icon(Icons.search),

    ),
    Tab(
      
      // text: 'Room',
      icon: Icon(Icons.event)
      
    )

  ];


  @override
  Widget build(BuildContext context) {
    return Theme(

      data : ThemeData(accentColor: OurColors.instance().light),
      child: DefaultTabController(

        length: 3,
        child: Scaffold(

          appBar: OurAppBar("",
            color: OurColors.instance().secondary,
            bottom: TabBar(
              tabs: myTabs,
            ),
          ),

          body: TabBarView(
            children: pages
          ),

        ),

      ),

    );

  }
}
