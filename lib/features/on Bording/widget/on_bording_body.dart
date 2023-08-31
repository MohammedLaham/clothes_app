import 'package:clothesmarketer/core/utils/size_conf.dart';
import 'package:clothesmarketer/core/widgwts/custom_button.dart';
import 'package:clothesmarketer/features/Auth/presentation/pages/login/login_page.dart';
import 'package:clothesmarketer/features/on%20Bording/widget/custom_dotsindicator.dart';
import 'package:clothesmarketer/features/on%20Bording/widget/custom_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class OnBordingBody extends StatefulWidget {
  const OnBordingBody({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OnBordingBodyState createState() {
    return _OnBordingBodyState();
  }
}

class _OnBordingBodyState extends State<OnBordingBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(pageController: pageController),
        Positioned(
          bottom: SizeConfig.defaultSize! * 22,
          left: 0,
          right: 0,
          child: CustomDotsIndicator(
              dotsIndex: pageController!.hasClients ? pageController!.page : 0),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
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
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomButton(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController!.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                }else{
                  Get.to(()=>const LoginPage(),transition: Transition.rightToLeft,duration: const Duration(milliseconds: 500));
                }
              },
              text: pageController!.hasClients
                  ? (pageController!.page == 2 ? 'Get Started' : 'Next')
                  : 'Next',
            ))
      ],
    );
  }
}
