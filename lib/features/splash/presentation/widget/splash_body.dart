import 'package:clothesmarketer/core/utils/size_conf.dart';
import 'package:clothesmarketer/features/on%20Bording/on_bording_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin{
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  @override
  void initState() {
    super.initState();
    animationController=AnimationController(vsync: this,duration: const Duration(milliseconds: 600));
    fadingAnimation=Tween<double>(begin: .2,end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextView();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController?.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Container(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assest/images/splash_view2.png'),
           FadeTransition(opacity: fadingAnimation!,
           child:  const Text('Clothes Market',style: TextStyle(
               color: Colors.white,
               fontSize: 45,
               fontWeight: FontWeight.bold,
           ),),),
          Image.asset('assest/images/splash_view_image.png')
        ],
      ),
    );
  }
  void goToNextView(){
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(()=>const OnBordingView(),transition:  Transition.fade);
    });
  }
}

