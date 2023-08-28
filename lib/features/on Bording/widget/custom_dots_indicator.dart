import 'package:clothesmarketer/constants.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({Key? key, @required this.dotsIndex})
      : super(key: key);
  final double? dotsIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
        dotsCount: 3,
        position: dotsIndex!.toInt(),
        decorator: DotsDecorator(
            color: Colors.transparent,
            activeColor: pKColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: pKColor))));
  }
}
