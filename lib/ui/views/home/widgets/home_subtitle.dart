import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../common/styles.dart';

class HomeSub extends StatelessWidget {
  const HomeSub({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'I build application using Flutter framework.',
      style: ktsBodyLarge.copyWith(
          fontSize: getValueForScreenType(
              context: context, mobile: 16, desktop: 20, tablet: 16)),
      textAlign: TextAlign.center,
    );
  }
}
