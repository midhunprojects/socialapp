import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:socialapp/routes/route_names.dart';
import 'package:socialapp/widgets/auth_input.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _form= GlobalKey<FormState>();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  //submit function
  void submit(){
    if(_form.currentState!.validate()){
      // ignore: avoid_print
      print("all good");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: SingleChildScrollView(
          padding:const EdgeInsets.all(15),
          child: Form(
            key: _form,
            child: Column(
              children: [
                Image.asset("assets/images/logo.png",width: 60,height: 60,),
              const  Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Login",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )
                      ),
                      Text("Welcome Back"),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                 AuthInput(
                  label: "Email",
                  hintText: "Enter Your Email",
                  controller:emailcontroller ,
                  validatorCallback: ValidationBuilder().email().build(),
                  ),
                 const SizedBox(height: 20,),
                AuthInput(
                  label: "Password",
                  hintText: "Enter your Password",
                  isPassword: true,
                  controller: passwordcontroller,
                  validatorCallback: ValidationBuilder().required().build(),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: submit,
                    style: ButtonStyle(
                      minimumSize:WidgetStateProperty.all(Size.fromHeight(40)),
                    ),
                    child: const Text("Submit")),
                    const SizedBox(height: 20,),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: " Sign UP",
                            style:const TextStyle(
                              fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()..onTap =() =>Get.toNamed(RouteNames.register)
                            )],
                        text: "Don't have An Account ?"))
                
              ],
            ),
          ),
        ),
      )),
    );
  }
}