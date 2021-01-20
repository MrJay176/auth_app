import 'package:flutter/material.dart';

class ProfileMiddle extends StatefulWidget{


  ProfileMiddle({
    this.animationtop,
    this.animationbottom,
    this.animationTypetop,
    this.animationTypeBottom,
    this.onPressed,
  });

  AnimationController animationtop;
  AnimationController animationbottom;
  Animation<double> animationTypetop;
  Animation<double> animationTypeBottom;
  Function onPressed;


  @override
  State<StatefulWidget> createState() {
   return ProfileMiddleState();
  }


}

class ProfileMiddleState extends State<ProfileMiddle>{

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(horizontal:10),
      width:MediaQuery.of(context).size.width,
      decoration:BoxDecoration(
        color:Colors.white,
        boxShadow: [
          BoxShadow(
            color:Colors.grey,
            offset:Offset(0.0 ,1.0),
            blurRadius:6.0,
          )
        ]
      ),
      child:Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children:[
          Text(
          "Your Feed",
          style:TextStyle(
             fontWeight:FontWeight.bold,
             color:Colors.black,
             fontSize:13.0
            )
          ),

          GestureDetector(
            onTap:(){
              widget.onPressed;
            },
            child: Icon(
              Icons.arrow_circle_up,
              size: 35.0 ,
              color:Colors.black45
            ),
          )
        ]
      )
    );
  }

}