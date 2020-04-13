import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: <Widget>[
          SizedBox(height: 46.0,),
          Padding(
              padding: const EdgeInsets.fromLTRB(46.0, 16.0, 46.0, 16.0),
              child: TextField(decoration: InputDecoration( hintText: 'First Name',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ), style: TextStyle(color: Colors.white, fontSize: 20.0), )),
          Padding(
            padding: const EdgeInsets.fromLTRB(46.0, 26.0, 46.0, 16.0),
            child: TextField(decoration: InputDecoration( hintText: 'Last Name',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ), style: TextStyle(color: Colors.white, fontSize: 20.0), ),),
          Padding(
            padding: const EdgeInsets.fromLTRB(46.0, 26.0, 46.0, 16.0),
            child: TextField(decoration: InputDecoration( hintText: 'Email',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ), style: TextStyle(color: Colors.white, fontSize: 20.0), ),),
          Padding(
            padding: const EdgeInsets.fromLTRB(46.0, 26.0, 46.0, 16.0),
            child: TextField(decoration: InputDecoration( hintText: 'password',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ), style: TextStyle(color: Colors.white, fontSize: 20.0), ),),
          Padding(
            padding: const EdgeInsets.fromLTRB(46.0, 26.0, 46.0, 16.0),
            child: TextField(decoration: InputDecoration( hintText: 'Confirm password',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ), style: TextStyle(color: Colors.white, fontSize: 20.0), ),),
          Padding(
            padding: const EdgeInsets.fromLTRB(46.0, 26.0, 46.0, 16.0),
            child: TextField(decoration: InputDecoration( hintText: 'Phone number',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ), style: TextStyle(color: Colors.white, fontSize: 20.0), ),),
          SizedBox(height: 50.0,),
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 24.0),
            child: FlatButton(onPressed: () {}, child: Text('sign up'), color: Colors.black, textColor: Colors.amber,),
          )
        ],
      ),
      backgroundColor: Colors.grey[900],

    );
  }
}
