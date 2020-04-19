import 'package:flutter/material.dart';

class OurColors {

  static OurColors _obj;

  Color primary;
  Color secondary;
  Color tertiary;
  Color light;

  OurColors._private() {
    primary = Colors.green[500];
    secondary = Colors.green[700];
    tertiary = Colors.grey[900];
    light = Colors.white70;
  }

  static OurColors instance() {
    if (_obj == null)
      _obj = new OurColors._private();
    return _obj;
  }
}