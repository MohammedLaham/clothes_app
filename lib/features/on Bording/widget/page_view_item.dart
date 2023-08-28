import 'package:clothesmarketer/core/utils/size_conf.dart';
import 'package:clothesmarketer/core/widgwts/custom_sizedbox.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.title, this.subTitle, this.image})
      : super(key: key);
  final String? title;
  final String? subTitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(25),
        SizedBox(
          height: SizeConfig.defaultSize! *20,
          child: Image.asset(image!,),
        ),
        const VerticalSpace(5),
        Text(
          title!,
          style: const TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(1),
        Text(
          subTitle!,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black54,
          ),
          textAlign: TextAlign.left,
        )
        //     Container(
        //       height: 100,
        //  width: 100,
        //  child: Image(
        //       image: CachedNetworkImageProvider(
        //         'https://via.placeholder.com/119x157',
        //       )),
        // )
      ],
    );
  }
}
