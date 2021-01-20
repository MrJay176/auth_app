
import 'package:auth_app/utils/logic.dart';
import 'package:auth_app/widgets/Profile/ProfileBottom.dart';
import 'package:auth_app/widgets/Profile/ProfileMiddle.dart';
import 'package:auth_app/widgets/Profile/ProfileTop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{

  ProfilePage({
    this.logic,
    this.animationTypetop,
    this.animationTypeBottom,
    this.init
  });

  Logic logic;
  Function init;
  Animation<double> animationTypetop;
  Animation<double> animationTypeBottom;

  @override
  State<StatefulWidget> createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage>{

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Column(
            children:[

              Expanded(
                flex:widget.logic.convertToInt(widget.animationTypetop.value),
                child:Container(
                  color:Colors.white,
                  child:ProfileTop(),
                ),
              ),

              GestureDetector(
                onTap:(){
                  widget.init;

                },
                child: Expanded(
                  flex:10,
                  child:Container(
                    child:ProfileMiddle(onPressed:(){
                      widget.init;

                    }),
                  ),
                ),
              ),

              Expanded(
                flex:widget.logic.convertToInt(widget.animationTypeBottom.value),
                child:ProfileBottom(),
              ),
            ]
        )
    );
  }

}