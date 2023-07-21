import 'package:portofolio/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/ui/views/home/widgets/home_subtitle.dart';
import 'package:portofolio/ui/views/home/widgets/home_title.dart';
import 'package:portofolio/ui/views/home/widgets/home_topimage.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';
import 'widgets/home_carousel.dart';
import 'widgets/home_footer.dart';
import 'widgets/home_intro.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
        backgroundColor: kcBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.85,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.sizeOf(context).height * 0.05,
                          bottom: MediaQuery.sizeOf(context).height * 0.02),
                      child: HomeTitle(),
                    ),
                    HomeSub(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.sizeOf(context).height * 0.04,
                      ),
                      child: HomeTopImage(),
                    ),
                  ],
                ),
              ),
              HomeIntro(),
              SizedBox(
                height: 80,
              ),
              HomeCarousel(),
              SizedBox(
                height: 80,
              ),
              HomeFooter()
            ],
          ),
        ));
  }
}
