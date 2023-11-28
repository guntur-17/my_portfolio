import 'package:flutter/material.dart';
import 'package:portofolio/ui/common/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeIntro extends StatelessWidget {
  const HomeIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 480,
      decoration: const BoxDecoration(color: Color(0xffF45A74)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hi, im Guntur. Flutter Developer live in Indonesia ',
            style: StyleOnText()
                .ktsBodyLarge(context)
                .copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
          SizedBox(
            width: getValueForScreenType(
                context: context,
                mobile: MediaQuery.sizeOf(context).width * 0.8,
                desktop: MediaQuery.sizeOf(context).width * 0.4),
            child: Text(
              'Experienced in building mobile application using Flutter. \nQuite a curious person, and willing to learn new thing or two. \nPleased to know you.',
              style: StyleOnText().ktsBodyRegular(context).copyWith(),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
