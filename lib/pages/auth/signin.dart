import 'package:flutter/material.dart';
import 'package:librarysystem/components/OurAppBar.dart';
import 'package:librarysystem/components/OurColors.dart';
import 'package:librarysystem/components/OurTextField.dart';


class SignIn extends StatelessWidget {

  final email = TextEditingController();
  final password = TextEditingController();

  void login() {
    
  }

  void signup() {

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: OurColors.instance().secondary,
      appBar: OurAppBar("Welcome!"),
      body: SingleChildScrollView(

        child: Column(

          children: <Widget>[

            SizedBox(height: 150),
            Padding(

              padding: const EdgeInsets.fromLTRB(46.0, 0, 46.0, 16.0),
              child: OurTextField('Enter Email', email),

            ),

            Padding(

              padding: const EdgeInsets.fromLTRB(46.0, 16.0, 46.0, 16.0),
              child: OurTextField("Password", password, password: true),

            ),

            SizedBox(height: 100),
            FlatButton(

              onPressed: () => login(),
              color: OurColors.instance().tertiary,
              textColor: OurColors.instance().light,
              child: Text('Login',

                style: TextStyle(
                  fontSize: 17.0,
                ),

              ),

            ),
            SizedBox(height: 25,),
            Row(

              children: <Widget>[

                SizedBox(width: 300.0),
                FlatButton(

                  onPressed: () => signup(),
                  child: Text('Sign up'),
                  textColor: OurColors.instance().light,

                )

              ],

            )

          ],

        ),

      ),

    );

  }

}