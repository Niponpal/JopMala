import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jopmales/View/HOmescreenView.dart';

class LoginScrenView extends StatefulWidget {
  const LoginScrenView({super.key});

  @override
  State<LoginScrenView> createState() => _LoginScrenViewState();
}

class _LoginScrenViewState extends State<LoginScrenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 15),
             Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ),
             SizedBox(height: 40),

             Text(
              "User Name",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
             SizedBox(height: 6),
            TextField(
              keyboardType: TextInputType.none,
              decoration: const InputDecoration(
                hintText: 'Enter your Name',
                prefixIcon: Icon(Icons.person),
              ),
            ),

             SizedBox(height: 50),

             Text(
              "Password",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
             SizedBox(height: 6),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter your password',
                prefixIcon: Icon(Icons.lock_outline),
              ),
            ),

            SizedBox(height: 60),
            GestureDetector(
              onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HOmescreenView(),));
              },
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),
            Center(
              child: Text(
                "Or",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,color: Colors.grey),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
