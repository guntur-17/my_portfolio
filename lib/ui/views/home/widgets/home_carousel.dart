import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/model/carousel_model.dart';
import 'package:portofolio/service/carousel_service.dart';
import 'package:portofolio/ui/views/home/widgets/carousel_widget/carousel_item.dart';

import '../../../common/styles.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  late List<CarouselModel> _data;
  // List<Doctor> _foundDoctor = [];

  @override
  initState() {
    // at the beginning, all users are shown
    _data = carouselData;
    // _foundDoctor = allDoctor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> dataSlider =
        _data.map((item) => CarouselItem(data: item)).toList();

    return Container(
      width: double.infinity,
      height: 680,
      decoration: const BoxDecoration(color: Color(0xff346480)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.sizeOf(context).height * 0.05,
                bottom: MediaQuery.sizeOf(context).height * 0.05),
            child: Text("My Past Work",
                style: ktsBodyLarge.copyWith(fontWeight: FontWeight.w600)),
          ),
          CarouselSlider(
            items: dataSlider,
            options: CarouselOptions(
              height: 500.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
