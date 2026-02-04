import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jopmales/View/HOmescreenView.dart';

import 'login.dart';

class RegisterScreenView extends StatefulWidget {
  const RegisterScreenView({super.key});

  @override
  State<RegisterScreenView> createState() => _RegisterScreenViewState();
}

class _RegisterScreenViewState extends State<RegisterScreenView> {

  final _formKey= GlobalKey<FormState>();

  TextEditingController name=TextEditingController();
  TextEditingController phone=TextEditingController();
  TextEditingController pass= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Center(
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                ),

                SizedBox(height: 80),

                Text(
                  "User Name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 6),
                TextFormField(
                  validator: (value) {
                    if(value==null|| value.isEmpty){
                      return "Enter Your Name";
                    }
                    return null;
                  },
                  controller: name,

                  decoration: InputDecoration(
                    hintText: 'Enter your Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),

                SizedBox(height: 50),

                Text(
                  "Phone",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 6),
                TextFormField(
                  validator:(value) {
                    if(value==null|| value.isEmpty){
                      return "Enter Your Number";
                    }
                    return null;
                  },
                  controller:  phone,
                  decoration: InputDecoration(
                    hintText: 'Enter your Phone Number',
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
                SizedBox(height: 50),

                Text(
                  "Password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 6),
                TextFormField(
                  validator: (value) {
                    if(value==null|| value.isEmpty){
                      return "Enter Your Password";
                    }
                    return null;
                  },
                  controller: pass,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                ),

                SizedBox(height: 60),
                GestureDetector(
                  onTap: () {
                    //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HOmescreenView(),));
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          hoverColor: Colors.transparent,
                          onTap: (){
                            if(_formKey.currentState!.validate()){
                              var data={
                                "name": name.text,
                                "password": pass.text,
                                "phone": phone.text
                              };
                              FlutterSecureStorage storage= FlutterSecureStorage();
                             storage.write(key: "registerData", value: jsonEncode(data));
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScrenView(),));
                            }



                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
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
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HOmescreenView()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 11,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffFDF2E6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          height: 26,
                          width: 26,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          "Sign up with Google",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HOmescreenView()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 11,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffFDF2E6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          height: 26,
                          width: 26,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          "Sign up with facebook",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 80),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 4),
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScrenView(),));
                      },

                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
