import 'package:clothesmarketer/constants.dart';
import 'package:clothesmarketer/core/utils/size_conf.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration:
          BoxDecoration(color: pKColor, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          text,
          style:const  TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
