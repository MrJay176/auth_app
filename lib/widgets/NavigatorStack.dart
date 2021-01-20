import 'package:auth_app/utils/logic.dart';
import 'package:auth_app/widgets/Profile/ProfileMiddle.dart';
import 'package:auth_app/widgets/Profile/ProfileTop.dart';
import 'package:flutter/material.dart';

import 'NavigatorStackWid/ProfilePage.dart';
import 'Profile/ProfileBottom.dart';

class NavigatorStack extends StatefulWidget{

  NavigatorStack({
    @required this.index_value,
  });

  final int index_value;

  @override
  State<StatefulWidget> createState() {
    return NavigatorStackState();
  }

}

class NavigatorStackState extends State<NavigatorStack> with TickerProviderStateMixin{

  Logic logic;

  AnimationController animationbottom;
  Animation<double> animationTypetop;
  Animation<double> animationTypeBottom;

  bool isAnimationCompleted = false;

  @override
  void initState(){

    animationbottom = AnimationController(vsync:this,duration:Duration(seconds:5));
    animationTypetop = Tween<double>(begin:40, end:10).animate(CurvedAnimation(parent:animationbottom , curve:Curves.easeIn));
    animationTypeBottom = Tween<double>(begin:50, end:100).animate(CurvedAnimation(parent:animationbottom , curve:Curves.easeIn));
  }

  animationInit(){
    if(isAnimationCompleted){
      animationbottom.reverse();
      isAnimationCompleted = false;
    }else{

      animationbottom.forward();
      isAnimationCompleted = true;
    }

  }

  @override
  Widget build(BuildContext context) {

    logic = Logic(context);

    return AnimatedBuilder(
      animation:animationbottom,
      builder: (BuildContext context, Widget child) {
        return Stack(
          children:[

            Visibility(
              visible: widget.index_value == 0 ? true:false,
              child:Container(
                  child:Center(
                    child: Text(
                        'Home Page',
                        style:TextStyle(
                            color:Colors.black,
                            fontSize:20.0 ,
                            fontWeight:FontWeight.bold
                        )
                    ),
                  )
              ),
            ),

            Visibility(
                visible: widget.index_value == 1? true:false,
                child:Container(
                  child: Center(
                    child: Text(
                        'Search Page',
                        style:TextStyle(
                            color:Colors.green,
                            fontSize:20.0 ,
                            fontWeight:FontWeight.bold
                        )
                    ),
                  ),
                )
            ),

            Visibility(
              visible: widget.index_value ==2?true:false,
              child:Container(
                child: Center(
                  child: Text(
                      'Upload Page',
                      style:TextStyle(
                          color:Colors.red,
                          fontSize:20.0 ,
                          fontWeight:FontWeight.bold
                      )
                  ),
                ),
              ),
            ),

            //ProfilePage
            Visibility(
              visible: widget.index_value ==3?true:false,
              child:ProfilePage(
                  logic:logic,
                  animationTypetop:animationTypetop,
                  animationTypeBottom:animationTypeBottom,
                  init:(){
                    animationInit();
                  }
              )
            ),

          ],
        );
      },

    );
  }

}