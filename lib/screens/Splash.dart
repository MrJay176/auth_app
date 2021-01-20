import 'package:auth_app/utils/appearance.dart';
import 'package:auth_app/utils/logic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: MyTheme(),
      home:Scaffold(
       body:SplashBody(),
      ),
    );
  }
}

class SplashBody extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashState();
  }

}

class SplashState extends State<SplashBody>{
  Logic logic;
  MyColor myColor;

  checkTimer()async{
     logic.waitSec(time:9);
  }

  @override
  Widget build(BuildContext context) {
    myColor = MyColor();
    logic = Logic(context);
    checkTimer();

    return Container(
      color:myColor.app_color,
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      child:Center(
        child:Text(
          'SocialZone',
           style:Theme.of(context).textTheme.bodyText1,

        )
      ) ,
    );
  }

}


