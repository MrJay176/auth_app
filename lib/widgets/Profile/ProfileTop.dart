import 'package:flutter/material.dart';

class ProfileTop extends StatefulWidget{

  ProfileTop({
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
   return ProfileTopState();
  }
}

class ProfileTopState extends State<ProfileTop>{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:EdgeInsets.all(10.0),
        width:MediaQuery.of(context).size.width,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children:[
                Expanded(
                  child: Container(
                   child:Column(
                     children:[
                       Container(
                         height:120.0,
                         padding:EdgeInsets.all(1.0),
                         width:100.0,
                         child:Center(child: Icon(Icons.person , size:60 , color:Colors.grey)),
                         decoration:BoxDecoration(
                           shape:BoxShape.circle,
                           border:Border.all(
                               color:Colors.grey ,
                               width:1.0
                           ),
                         )
                       ),
                       FittedBox(
                         child:Text(
                           'Joseph_Flutter_Dev',
                            style:TextStyle(
                              color:Colors.black,
                              fontSize:13.0,
                            )
                         ),
                       ),
                     ]
                   )
                  ),
                ),
                Expanded(
                  child: Container(
                    child:Column(
                      children:[
                        Text(
                            '638',
                            style:TextStyle(
                              color:Colors.black54,
                              fontSize:13.0,
                            )
                        ),
                        Text(
                            'Posts',
                            style:TextStyle(
                              color:Colors.black,
                              fontSize:13.0,
                            )
                        ),
                      ]
                    )
                  ),
                ),
                Expanded(
                  child: Container(
                      child:Column(
                          children:[
                            Text(
                                '1257',
                                style:TextStyle(
                                  color:Colors.black54,
                                  fontSize:13.0,
                                )
                            ),

                            Text(
                                'Followers',
                                style:TextStyle(
                                  color:Colors.black,
                                  fontSize:13.0,
                                )
                            ),
                          ]
                      )
                  ),
                ),
                Expanded(
                  child: Container(
                      child:Column(
                          children:[
                            Text(
                                '1500',
                                style:TextStyle(
                                  color:Colors.black54,
                                  fontSize:13.0,
                                )
                            ),
                            Text(
                                'Following',
                                style:TextStyle(
                                  color:Colors.black,
                                  fontSize:13.0,
                                )
                            ),
                          ]
                      )
                  ),
                ),
              ]
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              padding:EdgeInsets.symmetric(vertical:15.0),
              child: Container(
                margin:EdgeInsets.symmetric(horizontal:10.0),
                width:MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(
                    shape:BoxShape.rectangle,
                    border:Border.all(
                        color:Colors.grey ,
                        width:0.7
                    ),
                  ),
                child:FlatButton(
                  onPressed:(){

                  },
                  child:Text(
                    "Edit Profile",
                    style:TextStyle(
                      color:Colors.black,
                      fontWeight:FontWeight.bold,
                    )
                  )
                )
              ),
            )
          ],
        )

      ),
    );
  }

}