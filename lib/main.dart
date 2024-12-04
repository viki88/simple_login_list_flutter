import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_riverpod_project/ui/home/home.dart';
import 'package:simple_riverpod_project/utils/Constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))
            )
          )
      ),
      initialRoute: Constant.login_page,
      getPages: Constant.list_of_pages
    );
  }
}
