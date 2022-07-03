
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/app_text.dart';
import 'package:food_delivery_app/widget/app_text_field.dart';
import 'package:get/get.dart';

import '../widget/app_large_text.dart';
import 'sign_up.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController= TextEditingController();
    var passwordController= TextEditingController();

    // final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()..onTap=(() {
    //   SignUp();
    // });
    

    // ignore: prefer_typing_uninitialized_variables
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 70),
            //Logo
               const Center(
                 child:  CircleAvatar(
                   backgroundColor: Colors.white,
                   radius: 80,
                   backgroundImage: AssetImage("assets/imag/shopping-online.png"),
                 ),
               ),
          const SizedBox(height: 25,),
          //LargeText
          Container(
            
            margin: const EdgeInsets.only(left: 20,right: 180),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLargeText(text: "Hello",size: 60,),
              ],
            )
            
          ),
          //Text
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [
              Container(
                margin: const EdgeInsets.only(right: 130),
                child: RichText(
                  
            text: TextSpan(
            text: "Sign into your account",
            style: TextStyle(
                color: Colors.grey[500],
                fontSize: 20
            )
          )
          ),
              ),
            ],
          ),
          const SizedBox(height: 40,),
          //Email
          AppTextField(textController: emailController,
           hintText: "Email",
           icon: Icons.email,
          ),
          const SizedBox(height: 20,),
          //Password
          AppTextField( textController: passwordController,
           hintText: "Password",
           icon: Icons.password_sharp
          ),
          // SizedBox(height: 20,),
          
          const SizedBox(height:80,),
          //signInbutton
          Container(
            width: 160,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius .circular(30),
              color: Colors.lightGreen
            ),
            child: Center(
            
              child: AppText(text: "Sign In", size: 30, color: Colors.white,),
            ) ,
          ),
          const SizedBox(height: 60,),
          //SIgnup option
           RichText(
            text: TextSpan(
            text: "Don't have an account? ",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 16
            ), 
            children: [
              TextSpan(     
            text: "Lets Create",
            
            recognizer: TapGestureRecognizer()..onTap=() =>Get.to(()=>SignUp(), transition: Transition.fade ),
            // {
            //   Navigator.push(context, MaterialPageRoute(
            //     builder: (context) => const SignUp()),
            //         )
            // },
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 16
              )
               ), 
            ]
          )
          ),
          
      
      
      
          
      
          ],
        ),
      ),
    );
  }
}
