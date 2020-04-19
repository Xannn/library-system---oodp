import 'package:flutter/material.dart';
import 'package:librarysystem/components/OurColors.dart';


class OurAppBar extends AppBar {

  static final c = OurColors.instance();

  OurAppBar(String text, {PreferredSizeWidget bottom, Color color}) : super(

    centerTitle: true,
    backgroundColor: color != null? color: c.primary,
    bottom: bottom,
    title: Text(text,

      style: TextStyle(
        fontSize: 27.0,
      ),
    
    ),

  );

}