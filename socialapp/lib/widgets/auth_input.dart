import 'package:flutter/material.dart';
import 'package:socialapp/utils/type_def.dart';

class AuthInput extends StatelessWidget {
    final String label,hintText;
    final bool isPassword;
    final TextEditingController controller;
    final ValidatorCallback validatorCallback;
  const AuthInput({
    required this.hintText,
    required this.label,
    required this.controller,
    required this.validatorCallback,
    this.isPassword = false,
    super.key});

  @override
  Widget build(BuildContext context) {
    
    return TextFormField(
        controller: controller,
        obscureText: isPassword,
        validator: validatorCallback,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.grey)
                  ),
                  label: Text(label),
                  hintText: hintText
                ),
              );
  }
}