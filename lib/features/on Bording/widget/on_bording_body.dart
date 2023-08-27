import 'package:clothesmarketer/core/utils/size_conf.dart';
import 'package:clothesmarketer/core/widgwts/custom_button.dart';
import 'package:flutter/material.dart';

class OnBordingBody extends StatelessWidget {
  const OnBordingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            //هذه افضل من الميديا كويري
            top: SizeConfig.defaultSize! * 10,
            //top: MediaQuery.of(context).size.height*.1 ,//تعني نزلها من فوق 100 حسب حجم شاشة اي جهاز
            right: 32,
            child: const Text(
              'Skip',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              textAlign: TextAlign.left,
            )),
          Positioned(
            left: SizeConfig.defaultSize!*10,
              right: SizeConfig.defaultSize!*10,
              bottom: SizeConfig.defaultSize!*10,
              child:   const CustomButton(
            text: 'Next',
          ))
      ],
    );
  }
}
