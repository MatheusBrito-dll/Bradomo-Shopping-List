import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_list/routes/routes.dart';
import 'package:shopping_list/utils/colors_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: ColorsApp.dark_primaryColor,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Shopping List',
      initialRoute: '/list',
      getPages: AppRoutes.getPages(),
    );
  }
}


