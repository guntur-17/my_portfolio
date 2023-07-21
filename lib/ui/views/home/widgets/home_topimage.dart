import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeTopImage extends StatelessWidget {
  const HomeTopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getValueForScreenType(context: context, mobile: 300, desktop: 480),
      height:
          getValueForScreenType(context: context, mobile: 300, desktop: 480),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage('assets/yoaslim.png')),
      ),
    );
  }
}
