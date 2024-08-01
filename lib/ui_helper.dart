import 'dart:ui';
import 'package:flutter/material.dart';

TextStyle myfont28({Color? textcolor}){
  return TextStyle(
      fontSize:38,
      color: textcolor ?? Color(0xff),
      fontWeight: FontWeight.w900,
      fontFamily:"pop"
  );
}
TextStyle myfontsecond28({Color? textcolor}){
  return TextStyle(
      fontSize:25,
      color: textcolor ?? Color(0xff),
      fontFamily:"pop"
  );
}

TextStyle myfont17(){
  return TextStyle(
      fontSize:17,
      fontWeight: FontWeight.w800,
      fontFamily:"pop",

  );
}