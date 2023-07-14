import 'package:classico/imageupload.dart';
import 'package:classico/register.dart';
import 'package:classico/temp.dart';
import 'package:classico/videoupload2.dart';
import 'package:flutter/material.dart';
import 'package:classico/login.dart';
import 'package:classico/home.dart';
import 'package:classico/phone.dart';
import 'package:classico/otp.dart';
import 'package:firebase_core/firebase_core.dart';

import 'emailotp.dart';
import 'forgot_pwd_screen.dart';
import 'options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     options: FirebaseOptions(apiKey: 'AIzaSyBGcWOptDEq4kQyQcuC8zlek_-JJwYYg2g', appId: '1:277582212889:android:e1d1e3622a68714b345f88', messagingSenderId: '277582212889', projectId: 'emailsignin-eb839'),
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'options',
    routes: {
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister(),
      // 'home' : (context)=>MyHome(),
      'imageupload':(context)=>MyHome(),
      // 'videoupload':(context)=>videoupload(),
      'phone':(context)=>MyPhone(),
      'otp':(context)=>MyOtp(),
      'emailotp': (context) => MyEmail(),
      'forgot': (context) => ForgotPasswordScreen(),
      'options':(context)=> OptionsPage(),
      'videoupload2':(context)=> MyHome1(),
      // 'temp':(context)=>MyThome(),
    },
  ));
}
