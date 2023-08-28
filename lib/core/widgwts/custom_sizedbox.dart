import 'package:clothesmarketer/core/utils/size_conf.dart';
import 'package:flutter/material.dart';
class HorizantalSpace extends StatelessWidget {
  const HorizantalSpace(this.value) ;
   final double? value;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: SizeConfig.defaultSize!*value!,);
  }
}
class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value) ;
  final double? value;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: SizeConfig.defaultSize ! *value!,);
  }
}