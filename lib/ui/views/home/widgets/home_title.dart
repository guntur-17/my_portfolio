import 'package:flutter/material.dart';
import 'package:portofolio/ui/common/styles.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientText(
      'FLUTTER DEVELOPER',
      textAlign: TextAlign.center,
      style: StyleOnText().ktsTitleText(context).copyWith(),
      colors: const [Color(0xffF45A74), Color(0xff346480)],
    );
  }
}
