import 'package:flutter/material.dart';

class HomeTopImage extends StatelessWidget {
  const HomeTopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 480,
      height: 480,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage('assets/yoaslim.png')),
      ),
    );
  }
}
