
// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/auth/singn_in.dart';
import 'package:food_delivery_app/model/signup_body.dart';
import 'package:food_delivery_app/widget/app_text.dart';
import 'package:food_delivery_app/widget/app_text_field.dart';
import 'package:food_delivery_app/widget/show_custom_message.dart';
import 'package:get/get.dart';





class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController= TextEditingController();
    var passwordController= TextEditingController();
    var nameController= TextEditingController();
    var phoneController= TextEditingController();
    var signUpImag=[
      "t.png",
      "f.png",
      "goo.png",
    ];
    void _registration(context){
      String name= nameController.text.trim();
      String password= passwordController.text.trim();
      String email= emailController.text.trim();
      String phone= phoneController.text.trim();

      if(email.isEmpty){
        showCustomSnackbar("Type in your email address", title: "Email");
      }else if(!GetUtils.isEmail(email)){
         showCustomSnackbar("Type in your Valid  email", title: "Valid Email");

      }else if(password.isEmpty){
         showCustomSnackbar("Type in your Password", title: "Password");

      }else if(password.length<8){
         showCustomSnackbar("Password can not be less than 8 charactrs", title: "Password");

      }else if(name.isEmpty){
         showCustomSnackbar("Type in your name", title: "Name");

      }else if(phone.isEmpty){
         showCustomSnackbar("Type in you Phone Number", title: "Phone Number");

      }else {
         showCustomSnackbar("All went well", title: "Perfect");

         SignUpBody signUpBody= SignUpBody(email: email, 
         password: password, 
         name: name, 
         phone: phone);

         print(signUpBody.toString());

      }
      

    }
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 70),
            //Logo
               const Center(
                 child: CircleAvatar(
                   backgroundColor: Colors.white,
                   radius: 70,
                   backgroundImage: AssetImage("assets/imag/shopping-cart.png"),
                 ),
               ),
            
          const SizedBox(height: 25,),
          //Email
          AppTextField(textController: emailController,
           hintText: "Email",
           icon: Icons.email,
          ),
          const SizedBox(height: 20,),
          //Password
          AppTextField(
             textController: passwordController,
           hintText: "Password",
           icon: Icons.password_sharp,
           
           
          ),
          const SizedBox(height: 20,),
          //Name
          AppTextField(textController: nameController,
           hintText: "Name",
           icon: Icons.person,
          ),
          const SizedBox(height: 20,),
          //Phone
          AppTextField(textController: phoneController,
           hintText: "Phone",
           icon: Icons.phone,
          ),
          const SizedBox(height: 30,),
          //signupbutton
          GestureDetector(
            onTap: () {
              _registration(context);

            },
            child: Container(
              width: 160,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius .circular(30),
                color: Colors.lightGreen
              ),
              child: Center(
                child: AppText(text: "Sign Up", size: 30, color: Colors.white,),
              ) ,
            ),
          ),
          //tagline
          const SizedBox(height: 10,),
          RichText(
            text: TextSpan(
            text: "Have an account already?",
             recognizer: TapGestureRecognizer()..onTap=() =>Get.back(result: ()=>SignIn(),),
            //  {
              // Navigator.push(context, MaterialPageRoute(
              //   builder: (context) => const SignIn()),
              //       )
            // },
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 20
            )
          )
          ),
          const SizedBox(height:8,),
          //SIgnup option
           RichText(
            text: TextSpan(
            text: "Sign up using one of the following methods",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 16
            )
          )
          ),
          Wrap(
            children: 
              List.generate(3, (index) => Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius:30 ,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/imag/${signUpImag[index]}"),


                ),
              )),
            
      
          )

          ],
        ),
      ),
    );

    
  }
}
