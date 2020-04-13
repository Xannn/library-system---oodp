import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profile_pg extends StatefulWidget {
  @override
  _profile_pgState createState() => _profile_pgState();
}

class _profile_pgState extends State<profile_pg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('My profile'), backgroundColor: Colors.grey[800], centerTitle: true, ),

      body: ListView(
        children: <Widget>[
          SizedBox(height: 76.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(child: CircleAvatar(radius: 60.0, child: Image.asset('images/darwin.png'), backgroundColor: Colors.black,),),
              Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[ Text('Name', style: TextStyle(fontSize: 26.0, color: Colors.white, letterSpacing: 6.0),), Text('Address', style: TextStyle(fontSize: 26.0, color: Colors.white, letterSpacing: 6.0),)  ],),
            ],
          ),
          SizedBox(height: 76.0,),
          SizedBox(
            width: 100, height: 100,
            child: ListView(

              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Image.asset('images/book.jpg'),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/book.jpg'),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/book.jpg'),
                ),
              ],
            ),
          ),
          Center(child: Text('Books'),),


          SizedBox(height: 26.0,),
          SizedBox(
            width: 100, height: 100,
            child: ListView(

              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Image.asset('Images/rings.jpg'),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('Images/rings.jpg'),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('Images/rings.jpg'),
                ),
              ],
            ),
          ),
          Center(child: Text('Owned'),),



          SizedBox(height: 26.0,),
          SizedBox(
            width: 100, height: 100,
            child: ListView(

              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Image.asset('Images/rings.jpg'),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('Images/rings.jpg'),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('Images/rings.jpg'),
                ),
              ],
            ),
          ),
          Center(child: Text('Rented Rooms'),),

        ],
      ),

      backgroundColor: Colors.grey[900],
    );
  }
}
