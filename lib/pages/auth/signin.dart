import 'package:flutter/material.dart';

class sign_in extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          SizedBox(height: 250,),
          Padding(
            padding: const EdgeInsets.fromLTRB(46.0, 0, 46.0, 16.0),
            child: TextField(decoration: InputDecoration( hintText: 'Enter Email',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ),
              style: TextStyle(color: Colors.white, fontSize: 20.0), ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(46.0, 16.0, 46.0, 16.0),
            child: TextField(decoration: InputDecoration( hintText: 'Password',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ),
              style: TextStyle(color: Colors.white, fontSize: 20.0), ),
          ),
          SizedBox(height: 100,),
          FlatButton(onPressed: () {}, color: Colors.black, textColor: Colors.amber, child: Text('Login'),),
          SizedBox(height: 90,),
          Row(children: <Widget>[SizedBox(width: 300.0), FlatButton(onPressed: () {} ,child: Text('Sign up'), textColor: Colors.amber,)],)

        ],
      ),
      backgroundColor: Colors.grey[900],

    );
  }
}
