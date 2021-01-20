import 'package:flutter/material.dart';

ThemeData MyTheme(){

  TextTheme _myTextTheme(TextTheme base){

    return base.copyWith(
        bodyText2:base.bodyText2.copyWith(
        color:Colors.black54,
        fontWeight:FontWeight.bold,
        fontSize: 23.0
      ),
      bodyText1:base.bodyText1.copyWith(
        fontSize:19.0,
        color:Colors.white,
        fontFamily: "Source Sans Pro",
        fontWeight: FontWeight.w300
      ),

    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme:_myTextTheme(base.textTheme),
    primaryColor:Colors.white
  );
}

class MyColor{

  Color app_color = Color(0xFF2962FF);

}