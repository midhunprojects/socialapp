import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/route_manager.dart';
import 'package:socialapp/routes/route_names.dart';
import 'package:socialapp/widgets/auth_input.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _form= GlobalKey<FormState>();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller = TextEditingController();

  //Submit method

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
                      Text("Register",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )
                      ),
                      Text("Welcome To Thread"),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                 AuthInput(
                  label: "Name",
                  hintText: "Enter Your Name",
                  controller:namecontroller ,
                  validatorCallback: ValidationBuilder().required().minLength(3).maxLength(50).build(),
                  ),
                 const SizedBox(height: 20,),
                 AuthInput(
                  label: "Email",
                  hintText: "Enter Your Email",
                  controller:emailcontroller ,
                  validatorCallback: ValidationBuilder().required().email().build(),
                  ),
                 const SizedBox(height: 20,),
                AuthInput(
                  label: "Password",
                  hintText: "Enter your Password",
                  isPassword: true,
                  controller: passwordcontroller,
                  validatorCallback: ValidationBuilder().required().minLength(6).maxLength(50).build(),
                  ),
                  const SizedBox(height: 20,),
                  AuthInput(
                  label: " Confirm Password",
                  hintText: "Enter your Confirm Password",
                  isPassword: true,
                  controller: confirmpasswordcontroller,
                  validatorCallback: (arg){
                    if(passwordcontroller.text != arg){
                           return " confirm password not matched";
                    }
                    return null;
                  },
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed:submit,
                    style: ButtonStyle(
                      minimumSize:WidgetStateProperty.all(Size.fromHeight(40)),
                    ),
                    child: const Text("Submit")),
                    const SizedBox(height: 20,),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: " Log In",
                            style:const TextStyle(
                              fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()..onTap =() =>Get.toNamed(RouteNames.login)
                            )],
                        text: "Already have An Account ?"))
                
              ],
            ),
          ),
        ),
      )),
    );
  }
}