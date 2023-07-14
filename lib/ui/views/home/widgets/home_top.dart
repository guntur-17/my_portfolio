import 'package:flutter/material.dart';

import '../../../common/styles.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Guntur Pratama',
      style: ktsBodyRegular.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
