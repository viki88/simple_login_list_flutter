import 'package:get/get.dart';
import 'package:simple_riverpod_project/ui/home/home.dart';
import 'package:simple_riverpod_project/ui/login/login.dart';

class Constant{
  static var home_page = "/";
  static var login_page = "/login";
  static var list_of_pages = [
    GetPage(
        name: home_page,
        page: () => HomeScreen(),
        transition: Transition.cupertino
    ),
    GetPage(
        name: login_page,
        page: () => LoginScreen(),
        transition: Transition.cupertino
    )
  ];
}