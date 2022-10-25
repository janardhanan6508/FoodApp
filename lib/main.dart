import 'package:flutter/material.dart';
import 'package:food_app/Pages/food/popular_food_details.dart';
import 'package:food_app/Pages/home/main_food_page.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainFoodPage(),
      getPages: [
        GetPage(name: '/', page: () =>MainFoodPage() ),
        GetPage(name: '/second', page: () => PopularFoodDetail()),
      ],
    );
  }
}

