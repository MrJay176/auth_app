import 'dart:async';
import 'dart:html';
import 'dart:io';
import 'package:auth_app/screens/LoginScreen.dart';
import 'package:auth_app/screens/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ext_storage/ext_storage.dart';

class Logic {

  BuildContext context;

  Logic(BuildContext con){
    context = con;
  }

  Future<void> waitSec({int time}) async {
    Timer timer;
    var _duration = Duration(seconds: time);

    timer = Timer(_duration, ()
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context )=>Login()));
    });
  }

  int convertToInt(double number_double){
    double multiplier = .5;
    return (multiplier * number_double).round();
  }

  List<String> imageurls(){
   final List<String> listItem = [
     'assets/appe.jpeg',
     'assets/bags.jpg',
     'assets/bagsy.jpg',
     'assets/joes.jpg',
     'assets/shift.jpeg',
     'assets/test.jpg',
     'assets/joes.jpg',
     'assets/appe.jpeg',
     'assets/shift.jpeg',

   ];
   return listItem;
  }

  //Get Permissions
   Future<bool> CheckPermissionStatus() async {
    final status = Permission.storage.request().isGranted;
    return status;
  }

  //Get The Path
  Future<String> GetPath(){
    return ExtStorage.getExternalStoragePublicDirectory(
      ExtStorage.DIRECTORY_DOWNLOADS
    );
  }

  //Fetches The Image From The Path
  Future<List<dynamic>> FetchFiles(Directory dir) async{
    List<dynamic> listImages = List<dynamic>();
    dir.list().forEach((element){
      RegExp regExp = new RegExp("\.(gif|jpe?g|tiff?|png|web p|bmp)", caseSensitive:false);
      if(regExp.hasMatch("$element")){
        listImages.add(element);
      }
    });
    return listImages;
  }

  //Returns The Images In a Widget For Display
  List<Widget> getListImages(List<dynamic> listImagePaths){
    List<Widget> listImagesWidget = List<Widget>();
    for(var imagePath in listImagePaths){
      listImagesWidget.add(
        Container(
          padding:const EdgeInsets.all(8),
          child:Image.file(imagePath , fit :BoxFit.cover),
        )
      );
    }
    return listImagesWidget;
  }

}
