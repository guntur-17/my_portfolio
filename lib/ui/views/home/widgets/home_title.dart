import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../common/styles.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: getValueForScreenType<CrossAxisAlignment>(
          context: context,
          mobile: CrossAxisAlignment.center,
          desktop: CrossAxisAlignment.start),
      children: [
        GradientText(
          'FLUTTER DEVELOPER',
          style: ktsTitleText.copyWith(
              fontSize: getValueForScreenType<double>(
                context: context,
                mobile: 60,
                desktop: 80,
              ),
              height: 0.95),
          colors: [Color(0xffF45A74), Color(0xff346480)],
        ),
      ],
    );
  }
}
