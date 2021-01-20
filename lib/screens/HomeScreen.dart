import 'package:auth_app/utils/appearance.dart';
import 'package:auth_app/widgets/NavigatorStack.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HomeBodyState();
  }

}

class HomeBodyState extends State<HomeScreen>{

  var index_notifier = 0 ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        theme: MyTheme(),
        home:Scaffold(
            appBar:AppBar(
              title:Text(
                  "SocialZone",
                  style:TextStyle(
                      color:Colors.black,
                      fontSize:19.0
                  )
              ),
              actions:[
                IconButton(
                  icon:Icon(Icons.send , size: 35 , color:Colors.black54),
                  onPressed: (){

                  },
                )
              ],
              centerTitle:true,
            ),
            body:NavigatorStack(index_value:index_notifier) ,
            bottomNavigationBar:CurvedNavigationBar(

              backgroundColor:Colors.blueAccent,
              height:60,
              animationDuration:Duration(
                milliseconds:300,
              ),
              animationCurve:Curves.bounceInOut,
              index:0,

              items:[
                Icon(Icons.home_filled , size: 25.0, color:Colors.black54),
                Icon(Icons.search , size: 25.0, color:Colors.black54),
                Icon(Icons.add_box_outlined , size: 25.0, color:Colors.black54),
                Icon(Icons.person , size: 25.0, color:Colors.black54)
              ],
              //Give Us Index Value to determine screen position
              onTap:(index){
                switch(index){
                  case 0:
                    setState(() {
                      index_notifier = 0;
                    });
                  break;
                  case 1:
                    setState(() {
                      index_notifier = 1;
                    });
                    break;
                  case 2:
                    setState(() {
                      index_notifier = 2;
                    });
                    break;
                  case 3:
                    setState(() {
                      index_notifier = 3;
                    });
                    break;
                }
              },
            )
        )
    );
  }

}
