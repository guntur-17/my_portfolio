import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/model/carousel_model.dart';
import 'package:portofolio/service/carousel_service.dart';
import 'package:portofolio/ui/common/app_colors.dart';
import 'package:portofolio/ui/common/styles.dart';
import 'package:portofolio/ui/views/home/widgets/carousel_widget/carousel_item.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  late List<CarouselModel> _data;

  @override
  initState() {
    _data = carouselData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> dataSlider =
        _data.map((item) => CarouselItem(data: item)).toList();

    return Container(
      width: double.infinity,
      height: 680,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xff346480),
              Color(0xff346480),
              kcBackgroundColor,
              kcBackgroundColor
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.4, 0.4, 1.0]),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: getValueForScreenType(
                    context: context,
                    mobile: MediaQuery.sizeOf(context).height * 0.07,
                    desktop: MediaQuery.sizeOf(context).height * 0.07,
                    tablet: MediaQuery.sizeOf(context).height * 0.05),
                bottom: MediaQuery.sizeOf(context).height * 0.02),
            child: Text("My Past Work",
                style: StyleOnText()
                    .ktsBodyLarge(context)
                    .copyWith(fontWeight: FontWeight.w600)),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.sizeOf(context).height * 0.05),
            child: Text("Here are some of my past project that I've worked on.",
                style: StyleOnText().ktsBodyRegular(context).copyWith()),
          ),
          CarouselSlider(
            items: dataSlider,
            options: CarouselOptions(
              height: getValueForScreenType(
                  context: context, mobile: 500, desktop: 500, tablet: 450),
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              viewportFraction: getValueForScreenType(
                  context: context, mobile: 0.9, desktop: 0.8, tablet: 0.8),
            ),
          ),
        ],
      ),
    );
  }
}
