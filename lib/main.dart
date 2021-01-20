import 'package:auth_app/screens/Splash.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  //Wait to initialize before moving to line 9
  await Firebase.initializeApp();
  //Line  returns FirebaseApp Instance
  runApp(Home());

}

class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }

}

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner:false,

      initialRoute:"/",
      routes: {
        "/":(context) =>Splash(),
      },
    );
  }
}
