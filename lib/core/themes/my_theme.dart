import 'package:flutter/material.dart';
import 'package:kangsayur_mart/core/themes/my_color.dart';

extension MyTheme on ThemeData {
  Color get myColorPrimary => MyColor.blue1;
  Color get myColorSecondary =>
      brightness == Brightness.dark ? MyColor.dark900 : MyColor.dark100;
  Color get myColorTxt =>
      brightness == Brightness.dark ? Colors.white : MyColor.dark900;
  Color get myColorTxtSecondary =>
      brightness == Brightness.dark ? MyColor.dark900 : MyColor.dark100;
  Color get myColorContainer =>
      brightness == Brightness.dark ? MyColor.dark800 : Colors.white;
  Color get myColorButton => MyColor.blue1;
  Color get myColorButtonSecondary =>
      brightness == Brightness.dark ? MyColor.dark700 : MyColor.dark100;
  Color get myColorScaffoldBg =>
      brightness == Brightness.dark ? MyColor.dark900 : MyColor.blue4;
}
