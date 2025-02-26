import 'package:get/get_navigation/get_navigation.dart';
import 'package:socialapp/routes/route_names.dart';
import 'package:socialapp/views/auth/login.dart';
import 'package:socialapp/views/auth/register.dart';
import 'package:socialapp/views/home.dart';

class Routes{
  static final pages = [
    GetPage(name: RouteNames.home, page: () => Home()),
    GetPage(name: RouteNames.login, page: () => const Login(),transition: Transition.fade),
    GetPage(name: RouteNames.register, page: () => const Register(),transition: Transition.fade),
  ];
  
}