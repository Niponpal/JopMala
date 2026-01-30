import 'package:flutter/material.dart';

class LoginScrenView extends StatefulWidget {
  const LoginScrenView({super.key});

  @override
  State<LoginScrenView> createState() => _LoginScrenViewState();
}

class _LoginScrenViewState extends State<LoginScrenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Center(child: Text("Login",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),)),


        ],
      ),
    );
  }
}
