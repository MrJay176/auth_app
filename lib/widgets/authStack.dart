import 'package:auth_app/widgets/authContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class authStack extends StatefulWidget{

  authStack({
    this.isLogin,
    this.stack_color
  });

  final bool isLogin;
  final Color stack_color;

  @override
  State<StatefulWidget> createState() {
    return authStackState();
  }

}

class authStackState extends State<authStack>{

  @override
  Widget build(BuildContext context) {

    return Stack(
      children:[

        Container(
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          color: null == widget.stack_color ? Colors.blueAccent:widget.stack_color
        ),

       authContainer(
           isLogin:null == widget.isLogin ? true : false,
           stack_color:Colors.white,
       )

      ],
    );
  }

}