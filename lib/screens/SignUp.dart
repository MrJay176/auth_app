import 'package:auth_app/utils/appearance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget{

  Function onPress;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme:MyTheme(),
      home:Scaffold(
        body:Container(
          child:Center(
            child: Text(
              'Sign Up Screen',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ) ,
        ) ,

      ) ,
    );
  }
}