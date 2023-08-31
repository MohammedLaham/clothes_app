import 'package:clothesmarketer/constants.dart';
import 'package:clothesmarketer/core/utils/size_conf.dart';
import 'package:clothesmarketer/core/widgwts/custom_button.dart';
import 'package:clothesmarketer/core/widgwts/custom_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(15),
        SizedBox(
          height: SizeConfig.defaultSize! * 27,
          child: Image.asset(
            kLogo,
          ),
        ),
        const VerticalSpace(0.5),
        SizedBox(
          height: SizeConfig.defaultSize! * 27,
          child: const Text(
            'Clothes Market',
            style: TextStyle(
              color: pKColor,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Row(
          children: [
            Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    color: Color(0xffdb3236),
                    iconData: FontAwesomeIcons.google,
                    text: 'Log in with',
                  ),
                )),
            Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    iconData: FontAwesomeIcons.facebookF,
                    color: Color(0xff4267B2),
                    text: 'Log in with',
                  ),
                ))
          ],
        )
      ],
    );
  }
}
