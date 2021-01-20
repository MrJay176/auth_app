import 'package:flutter/material.dart';

class MyBtn extends StatefulWidget{

  MyBtn({
    this.btn_color,
    this.btn_string,
    this.onPressed,
    this.text_color
  });

  final Color btn_color;
  final String btn_string;
  final Color text_color;
  final Function onPressed;

  @override
  State<StatefulWidget> createState() {
    return MyBtnState();
  }

}

class MyBtnState extends State<MyBtn>{

  @override
  Widget build(BuildContext context){

    return Container(
      decoration: BoxDecoration(
        borderRadius:BorderRadius.all(Radius.circular(20.0)),
        color:null == widget.btn_color ? Colors.blueAccent : widget.btn_color
      ),
      child: FlatButton(
        onPressed:widget.onPressed,
        child:Text(
          '${widget.btn_string}',
          style:TextStyle(
            color:null == widget.text_color ? Colors.black54:widget.text_color,
          )
        ),
        shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)),
      ),
    );
  }
}