import 'package:flutter/material.dart';
import 'package:portofolio/model/carousel_model.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/styles.dart';

class CarouselItem extends StatelessWidget {
  final CarouselModel data;
  const CarouselItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kcWhite,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff101828).withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0, bottom: 24, left: 24),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                data.image!,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.05,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.5,
              // width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 32),
                    child: Text(
                      data.name!,
                      style: ktsBodyLarge.copyWith(color: kcBlack),
                    ),
                  ),
                  Text(
                    data.about!,
                    style: ktsBodyRegular.copyWith(color: kcBlack),
                  ),
                  Row(
                    children: [],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
