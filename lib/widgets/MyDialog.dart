import 'package:flutter/material.dart';

class MyDialog{

  static Widget success(BuildContext context,Size size,{Function execute}){

    if(execute!=null){
      Future.delayed(Duration(seconds: 2),(){
        execute();
      });
    }

    showDialog(
        context:context,
        barrierDismissible:false,
        builder:(BuildContext context){

            Future.delayed(Duration(seconds:2),(){
              Navigator.pop(context);
            });

         return Padding(
           padding:EdgeInsets.only(top:size.height *.30,bottom:size.height *.10,left:35,right:35),
           child:Material(
              borderRadius:BorderRadius.circular(17),
              child:Container(
                height:size.height *.4,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(30)
                ),
               child:Padding(
                 padding:EdgeInsets.symmetric(horizontal: 26.0 , vertical: 2.0,),
                 child: Column(
                   mainAxisAlignment:MainAxisAlignment.center,
                   mainAxisSize: MainAxisSize.max,
                   children:[

                     Container(
                       child:Padding(
                         padding:EdgeInsets.all(16.0),
                         child:Icon(Icons.check, size : 50 , color: Colors.deepPurple,)
                      ),
                       decoration:BoxDecoration(
                        shape:BoxShape.circle,
                         border: Border.all(
                           width:8,
                           color: Color(0xFFE1D5FF),
                         )
                       ),
                     ),

                     SizedBox(
                       height:30,
                     ),
                     Text(
                       "Success",
                       style: TextStyle(
                         fontWeight:FontWeight.w700,
                         fontSize:19.0
                       ),
                     )
                   ],
                 ),
               )
              )
           )
         );
        }
    );


  }


  static Widget progress(BuildContext context,Size size,{Function execute}){

    if(execute!=null){
      Future.delayed(Duration(seconds: 6),(){
        execute();
      });
    }


    showDialog(
        context:context,
        barrierDismissible:false,
        builder:(BuildContext context){

          if(execute!=null){
            Future.delayed(Duration(seconds: 5),(){

              Navigator.pop(context);

            });
          }


          return Padding(
              padding:EdgeInsets.only(top:size.height *.30,bottom:size.height *.10,left:35,right:35),
              child:Material(
                  borderRadius:BorderRadius.circular(17),
                  child:Container(
                      height:size.height *.4,
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(30)
                      ),
                      child:Padding(
                        padding:EdgeInsets.symmetric(horizontal: 26.0 , vertical: 2.0,),
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children:[

                            SizedBox(
                              height:30,
                            ),
                            Text(
                              "Logging You In...",
                              style: TextStyle(
                                  fontWeight:FontWeight.w700,
                                  fontSize:19.0
                              ),
                            ),
                            Container(
                              child:Padding(
                                  padding:EdgeInsets.all(16.0),
                                  child:Icon(Icons.cached, size : 50 , color: Colors.deepPurple,)
                              ),
                              decoration:BoxDecoration(
                                  shape:BoxShape.circle,
                                  border: Border.all(
                                    width:8,
                                    color: Color(0xFFE1D5FF),
                                  )
                              ),
                            ),

                            SizedBox(
                              height:30,
                            ),
                            Text(
                              "Please Wait...",
                              style: TextStyle(
                                  fontWeight:FontWeight.w700,
                                  fontSize:19.0
                              ),
                            )
                          ],
                        ),
                      )
                  )
              )
          );
        }
    );


  }
}