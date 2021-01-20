import 'package:auth_app/screens/HomeScreen.dart';
import 'package:auth_app/widgets/MyBtn.dart';
import 'package:auth_app/widgets/MyDialog.dart';
import 'package:auth_app/widgets/MyTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class authContainer extends StatefulWidget{

  authContainer({
    this.isLogin,
    this.stack_color
  });

  final bool isLogin;
  final Color stack_color;

  @override
  State<StatefulWidget> createState() {
    return authContainerState();
  }
}

class authContainerState extends State<authContainer>{

  TextEditingController controllerEmail;
  TextEditingController controllerPassword;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controllerEmail = TextEditingController();
    controllerPassword = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      decoration:BoxDecoration(
        color: null == widget.stack_color ? Colors.white : widget.stack_color,
        borderRadius:BorderRadius.only(bottomRight:Radius.circular(300.0))
      ),
      child:Container(
        margin:EdgeInsets.only(top: 100.0),
        child: Column(
          children:[

            MyTextField(
              controller:controllerEmail,
              hintText:"Email",
              labeText: "Your Email",
              prefixIcon:Icons.email,
              helpText: "Email",
            ),

            MyTextField(
              controller:controllerPassword,
              hintText:"Password",
              labeText: "Your Password",
              prefixIcon:Icons.lock_open,
              helpText: "Password",
            ),

            Row(
              children: [
                Expanded(
                  child: MyBtn(
                      btn_color:Colors.blueAccent,
                      text_color:Colors.white,
                      btn_string:"Login",
                      onPressed: ( ) async {

                        MyDialog.progress(context , MediaQuery.of(context).size , execute:(){

                          MyDialog.success(context , MediaQuery.of(context).size , execute:(){

                            Navigator.pushReplacement(context , MaterialPageRoute(builder: (context){
                                return HomeScreen();
                              }));
                          });

                        });

                      },
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: MyBtn(
                    btn_color:Colors.white,
                    text_color:Colors.blueAccent,
                    btn_string:"No Account ? Create One Now",
                    onPressed: ( ) async {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                        return null;
                      }));
                    },
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }

}