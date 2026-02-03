import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jopmales/Auth/login.dart';
import 'package:jopmales/View/HOmescreenView.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  autoNavigate() async{
    await Future.delayed(Duration(seconds: 3));
    FlutterSecureStorage ss= FlutterSecureStorage();
    var data=await ss.read(key: "isLogin");

    if(data=="true"){
      Navigator.push(context, MaterialPageRoute(builder: (context) => HOmescreenView(),));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScrenView(),));
    }
  }
  @override
  void initState() {
    autoNavigate();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Center(
          child: Image.asset(
            'assets/images/Splashs.jpg',
            width: 400,
            height: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
