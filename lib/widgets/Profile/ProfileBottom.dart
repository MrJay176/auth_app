import 'package:auth_app/utils/logic.dart';
import 'package:flutter/material.dart';

class ProfileBottom extends StatefulWidget{

  ProfileBottom({
    this.animationtop,
    this.animationbottom,
    this.animationTypetop,
    this.animationTypeBottom,
  });

  AnimationController animationtop;
  AnimationController animationbottom;
  Animation<double> animationTypetop;
  Animation<double> animationTypeBottom;


  @override
  State<StatefulWidget> createState() {
    return ProfileBottomState();
  }


}

class ProfileBottomState extends State<ProfileBottom>{

  Logic logic;
  List<String> pictures = [];

  @override
  Widget build(BuildContext context) {
    logic = Logic(context);
    pictures = logic.imageurls();

    return Container(
       child:Container(
           color:Colors.white,
           child:GridView.count(
             crossAxisCount:2,
             padding: EdgeInsets.all(10),
             crossAxisSpacing:5,
             mainAxisSpacing:5,
             children:pictures.map((e) => Card(
               child:Container(
                 decoration: BoxDecoration(
                   image:DecorationImage(
                     image:AssetImage(e),
                     fit:BoxFit.cover
                   )
                 ),
               ),
             )).toList(),
           )
       ),
    );
  }

}