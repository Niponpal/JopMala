import 'package:flutter/material.dart';
import 'package:jopmales/Auth/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  autonavigate() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScrenView(),));
  }
  @override
  void initState() {
    autonavigate();
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
