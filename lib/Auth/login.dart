import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jopmales/Auth/register.dart';
import 'package:jopmales/View/HOmescreenView.dart';

class LoginScrenView extends StatefulWidget {
   LoginScrenView({super.key});

  @override
  State<LoginScrenView> createState() => _LoginScrenViewState();

}

class _LoginScrenViewState extends State<LoginScrenView> {
  final _formKey= GlobalKey<FormState>();
  TextEditingController nameController= TextEditingController();
  TextEditingController passController= TextEditingController();


  Map userInfo= {};
  getUser()async{
    FlutterSecureStorage storage= FlutterSecureStorage();
    var data= await storage.read(key: "registerData");
    userInfo= jsonDecode(data.toString());
    setState(() {

    });

  }
  @override
  void initState() {
    getUser();
    super.initState();
  }

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
                TextFormField(
                  validator: (value) {
                    if(value==null|| value.isEmpty){
                      return "Enter Your Name";
                    }
                    return null;
                  },
                  controller: nameController,
                  keyboardType: TextInputType.text,
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
                TextFormField(
                  validator: (value){
                    if(value==null|| value.isEmpty){
                      return "Enter Your Password";
                    }
                    return null;
                  },
                  controller: passController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                ),

                SizedBox(height: 60),
                GestureDetector(
                  onTap: ()async {
                    if(_formKey.currentState!.validate()){

                      if(nameController.text==userInfo["name"] && nameController.text==userInfo["name"] ){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HOmescreenView(),));
                      }
                      else{
                        log("not found");
                      }


                    }


                  },
                  child: Row(
                    children: [
                      Expanded(
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
                            "Login",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
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
                          "Sign in with Google",
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
                          "Sign in with facebook",
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
                    Text("Already have an account?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),),
                    SizedBox(width: 4,),
                    InkWell(
                      hoverColor: Colors.transparent,
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreenView(),));
                        },
                        child: Text("Register here",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.orangeAccent),)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
