import 'package:flutter/material.dart';
import 'package:librarysystem/components/OurColors.dart';


class OurTextField extends StatelessWidget {

  final String text;
  final TextEditingController controller;
  final bool password;

  OurTextField(String text, TextEditingController controller, {bool password = false}) :
    this.text = text,
    this.controller = controller,
    this.password = password, 
    super();

  @override
  Widget build(BuildContext context) {

    return Theme(

      data: ThemeData(primaryColor: OurColors.instance().primary),
      child: TextField(

        controller: controller,
        cursorColor: OurColors.instance().primary,
        obscureText: password,
        decoration: InputDecoration(

          hintText: text,
          enabledBorder: UnderlineInputBorder(

            borderSide: BorderSide(
              color: Colors.white
            )

          )

        ),
        style: TextStyle(

          color: Colors.white,
          fontSize: 22.0

        ),

      ),
      
    );

  }

}