
import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/app_large_text.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';


void showCustomSnackbar(String message,{ isError=true, String title= "Error"}){
  Get.snackbar(title, message,
  titleText: AppLargeText(text:title, color: Colors.white,),
  messageText: Text(message, style: const TextStyle(color: Colors.white),
  ),
  colorText: Colors.white,
  snackPosition: SnackPosition.TOP,
  backgroundColor: Colors.red
  );


}