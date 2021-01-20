import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget{

  MyTextField({
   @required this.controller,
    this.hintText,
    this.labeText,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword,
    this.readOnly,
    this.borderColor,
    this.helpText
  });

  final TextEditingController controller;
  final String hintText;
  final String helpText;
  final String labeText;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final bool isPassword;
  final bool readOnly;
  final Color borderColor;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyTextFieldState();
  }

}


class MyTextFieldState extends State<MyTextField>{

  @override
  Widget build(BuildContext context) {
   return Container(
     child:TextFormField(
       controller:widget.controller,
       readOnly: null == widget.readOnly ? false : true,
       obscureText: null == widget.isPassword ? false : true,
       decoration:InputDecoration(
         focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:Colors.teal,
              width:1.0,
            )
         ),
         enabledBorder:OutlineInputBorder(
             borderSide: BorderSide(
               color:Colors.blueAccent,
               width:1.0,
             )
         ),

         border:OutlineInputBorder(
             borderSide: BorderSide(
               color:null ==widget.borderColor ?Colors.black54:widget.borderColor,
               width:1.0,
             )
         ),
        hintText:null == widget.hintText ? "":widget.hintText,
        labelText:null == widget.labeText?" ":widget.labeText,
        helperText:null == widget.helpText?" ":widget.helpText,
        prefixIcon:null == widget.prefixIcon?null :Icon(widget.prefixIcon),
        suffixIcon:null == widget.suffixIcon?null :Icon(widget.suffixIcon),
       )
     )
   );
  }
}