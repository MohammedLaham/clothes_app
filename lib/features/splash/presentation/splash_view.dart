import 'package:clothesmarketer/constants.dart';
import 'package:clothesmarketer/features/splash/presentation/widget/splash_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: pKColor,
      body: SplashBody(),);
  }
}
