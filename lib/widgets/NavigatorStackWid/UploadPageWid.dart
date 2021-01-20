import 'dart:io';

import 'package:flutter/material.dart';
import 'package:auth_app/utils/logic.dart';

class UploadPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return UploadPageState();
  }

}

class UploadPageState extends State<UploadPage>{

  Logic logic;
  Future _futureGetPath;
  Future listImagePath;
  var _permissionStatus;


  @override
  Widget build(BuildContext context) {

     logic = Logic(context);
    _futureGetPath = logic.GetPath();
    _permissionStatus = logic.CheckPermissionStatus();
    return Container(
      child:Column(
        children:[
          Expanded(
              flex:1,
              child:FutureBuilder(
                  future:_futureGetPath,
                  builder:(BuildContext context ,AsyncSnapshot snapshot){
                    if(snapshot.hasData){
                      var dir = Directory(snapshot.data);
                      print("permission status:  $_permissionStatus");
                      if(_permissionStatus)logic.FetchFiles(dir);
                      return Text(snapshot.data);
                    }else{
                      return Text("Loading...");
                    }
                  }
              )
          ),
          Expanded(
            flex:19,
            child:FutureBuilder(
               future: _futureGetPath,
               builder:(BuildContext context ,  AsyncSnapshot snapshot){
                 if(snapshot.hasData){
                  var dir = Directory(snapshot.data);
                  if(_permissionStatus){
                    listImagePath = logic.FetchFiles(dir);
                    return FutureBuilder(
                        future: listImagePath,
                        builder:(BuildContext context , AsyncSnapshot snapshot){
                          print("value of async ${snapshot.data}");
                          return GridView.count(
                                 primary: false,
                                 padding: const EdgeInsets.all(20),
                                 crossAxisSpacing:7,
                                 mainAxisSpacing:7,
                                 crossAxisCount: 3,
                                 children:logic.getListImages(snapshot.data)
                             );
                        },
                    );
                  }else{
                    return Text(
                      'No Images'
                    );
                  }
                 }else{
                   return Text(
                     'loading'
                   );
                 }
               },
            )
          ),
        ],
      )
    );
  }

}