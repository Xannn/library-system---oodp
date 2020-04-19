import 'package:flutter/material.dart';
import 'package:librarysystem/components/OurAppBar.dart';
import 'package:librarysystem/components/OurColors.dart';
import 'package:librarysystem/components/OurTextField.dart';


class SignUp extends StatelessWidget {

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final phone = TextEditingController();

  void submit() {

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: OurColors.instance().secondary,
      appBar: OurAppBar("Sign Up"),
      body: ListView(

        children: <Widget>[

          SizedBox(height: 30.0),
          Padding(

            padding: const EdgeInsets.fromLTRB(46.0, 16.0, 46.0, 16.0),
            // child: TextField(decoration: InputDecoration( hintText: 'First Name',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ), style: TextStyle(color: Colors.white, fontSize: 20.0), )
            child: OurTextField("First Name", firstName),

          ),
          Padding(
            
            padding: const EdgeInsets.fromLTRB(46.0, 26.0, 46.0, 16.0),
            // child: TextField(decoration: InputDecoration( hintText: 'Last Name',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ), style: TextStyle(color: Colors.white, fontSize: 20.0), ),
            child: OurTextField("Last Name", lastName),

          ),
          Padding(
            
            padding: const EdgeInsets.fromLTRB(46.0, 26.0, 46.0, 16.0),
            // child: TextField(decoration: InputDecoration( hintText: 'Email',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ), style: TextStyle(color: Colors.white, fontSize: 20.0), ),
            child: OurTextField("Email", email),

          ),
          Padding(
            
            padding: const EdgeInsets.fromLTRB(46.0, 26.0, 46.0, 16.0),
            // child: TextField(decoration: InputDecoration( hintText: 'password',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ), style: TextStyle(color: Colors.white, fontSize: 20.0), ),
            child: OurTextField("Password", password, password: true),

          ),
          Padding(
            
            padding: const EdgeInsets.fromLTRB(46.0, 26.0, 46.0, 16.0),
            // child: TextField(decoration: InputDecoration( hintText: 'Confirm password',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ), style: TextStyle(color: Colors.white, fontSize: 20.0), ),
            child: OurTextField("Confirm Password", confirmPassword, password: true),

          ),
          Padding(
            
            padding: const EdgeInsets.fromLTRB(46.0, 26.0, 46.0, 16.0),
            // child: TextField(decoration: InputDecoration( hintText: 'Phone number',  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)) ), style: TextStyle(color: Colors.white, fontSize: 20.0), ),
            child: OurTextField("Phone Number", phone),

          ),
          SizedBox(height: 50.0,),
          Padding(
            
            padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 24.0), 
            child: FlatButton(

              onPressed: () => submit(),
              color: OurColors.instance().tertiary,
              textColor: OurColors.instance().light,
              child: Text('Submit',

                style: TextStyle(
                  fontSize: 17.0,
                ),

              ),

            ),

          )

        ],

      ),

    );

  }

}
