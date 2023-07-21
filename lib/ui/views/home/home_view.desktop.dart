import 'package:portofolio/ui/common/app_colors.dart';
import 'package:portofolio/ui/common/app_constants.dart';
import 'package:portofolio/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/ui/views/home/widgets/home_carousel.dart';
import 'package:portofolio/ui/views/home/widgets/home_footer.dart';
import 'package:portofolio/ui/views/home/widgets/home_intro.dart';
import 'package:portofolio/ui/views/home/widgets/home_subtitle.dart';
import 'package:portofolio/ui/views/home/widgets/home_title.dart';
import 'package:portofolio/ui/views/home/widgets/home_topimage.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const Scaffold(
        backgroundColor: kcBackgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 16),
            child: Column(
              children: [
                SizedBox(
                  // width: kdDesktopMaxContentWidth,
                  height: kdDesktopMaxContentHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // HomeTop(),
                      Center(
                        child: Column(
                          children: [
                            verticalSpaceMassive,
                            HomeTitle(),
                            horizontalSpaceLarge,
                            HomeSub(),
                            horizontalSpaceLarge,
                            HomeTopImage(),
                          ],
                        ),
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
          ),
        ));
  }
}
