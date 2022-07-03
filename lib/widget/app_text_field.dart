import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  // ignore: prefer_typing_uninitialized_variables
  final hintText;
  final IconData icon;
  const AppTextField({Key? key, required this.textController, this.hintText, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(left: 20,right: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30) ,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 7,
                offset: const Offset(1,10),
                color: Colors.grey.withOpacity(0.2)
              )
            ]
          ),
          child: TextField(
            obscureText: hintText=='password'? true:false,
           controller: textController,
           decoration: InputDecoration(
            //hinttext,
            hintText: hintText,
            //prefixicon,
            prefixIcon: Icon(icon, color: Colors.yellow,),
            
            //focusborder,
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              width: 1.0,
              color: Colors.white
            )
            ),
            //enabledBorder,
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              width: 1.0,
              color: Colors.white
            ),
            ),
            //border
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
           
            )
           ), 

          ),
        );
  }
}