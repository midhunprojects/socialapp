import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Center(
        child: Text('i am home'),
      ),
    );
  }
}