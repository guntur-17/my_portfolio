import 'package:flutter/material.dart';

import '../../../common/styles.dart';

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
            'Hi, im Guntur. Nice to meet you',
            style: ktsBodyLarge.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.4,
            child: Text(
              'I graduate from Gunadarma University. I have experience built application using Flutter. My past experience heavily leaning toward front-end development.\n But no, i dont design stuff, i collaborated with 3rd party UI/UX designer.\n As for back-end, my understanding only goes as far as implementing and integrating it with the front-end. I personally quite a curious person, and dont mind learn new thing or two.',
              style: ktsBodyRegular.copyWith(),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
