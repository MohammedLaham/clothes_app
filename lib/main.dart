import 'package:clothesmarketer/features/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const ClothApp());
}

class ClothApp extends StatelessWidget {
  const ClothApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
//git remote set-url origin https://github.com/MohammedLaham/clothes_app.git
      home:const  SplashView(),);
  }
}
