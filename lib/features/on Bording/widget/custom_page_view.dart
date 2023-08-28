import 'package:clothesmarketer/features/on%20Bording/widget/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(image:'assest/images/onBrinding1.png' ,title: 'E Shopping',subTitle: 'Explore top organic clothes',),
        PageViewItem(image:'assest/images/on_way.png' ,title: 'Delivary on the way',subTitle: 'Get your order by speed delivery',),
        PageViewItem(image:'assest/images/img.png' ,title: 'Delivery Arrived ',subTitle: 'Order is arrived at your Place',),

      ],
    );
  }
}
