import 'package:flutter/material.dart';
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
    animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 600));
    fadingAnimation=Tween<double>(begin: .2,end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController?.dispose();
  }
  @override
  Widget build(BuildContext context) {
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
               fontFamily: 'Poppins'
           ),),),
          Image.asset('assest/images/splash_view_image.png')
        ],
      ),
    );
  }
}

