import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:jopmales/Auth/login.dart';
import 'package:jopmales/Auth/register.dart';
import 'package:jopmales/splash/ui.dart';
import 'View/HOmescreenView.dart';
import 'splash/ui.dart';

void main (){
  runApp(
      MaterialApp(
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        home:SplashScreen() ,
      )
  );
}