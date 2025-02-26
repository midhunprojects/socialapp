import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:socialapp/routes/route.dart';
import 'package:socialapp/routes/route_names.dart';
import 'package:socialapp/theme/theme.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: theme,
      getPages: Routes.pages,
      initialRoute: RouteNames.login,
      defaultTransition: Transition.noTransition,
    );
  }
}