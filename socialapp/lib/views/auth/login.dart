import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset("assets/images/logo.png",width: 60,height: 60,),
            const  Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )
                    ),
                    Text("Welcome Back"),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.grey)
                  ),
                  label: Text("Email"),
                  hintText: "Enter your Email"
                ),
              )
              
            ],
          ),
        ),
      )),
    );
  }
}