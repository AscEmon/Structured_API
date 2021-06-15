import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:structured_api/Views/Utilis/AppRoutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      title: 'Structured API',
      getPages: AppRoutes.AppRoutesList(),
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white,
        backgroundColor: Colors.white,
      ),
    );
  }
}
