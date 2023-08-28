import 'package:clothesmarketer/constants.dart';
import 'package:clothesmarketer/core/utils/size_conf.dart';
import 'package:clothesmarketer/core/widgwts/custom_sizedbox.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, this.onTap})
      : super(key: key);
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
            color: pKColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {Key? key, this.onTap, required this.text, this.iconData, this.color})
      : super(key: key);
  final VoidCallback? onTap;
  final String? text;
  final IconData? iconData;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xff707070))),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            iconData,
            color: color,
          ),
          const HorizantalSpace(2),
          Text(
            text!,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color:  Color(0xff000000)),
            textAlign: TextAlign.left,
          )
        ]),
      ),
    );
  }
}
