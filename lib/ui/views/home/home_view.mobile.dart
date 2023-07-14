import 'package:portofolio/ui/common/app_colors.dart';
import 'package:portofolio/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/ui/views/home/widgets/home_subtitle.dart';
import 'package:portofolio/ui/views/home/widgets/home_title.dart';
import 'package:portofolio/ui/views/home/widgets/home_top.dart';
import 'package:portofolio/ui/views/home/widgets/home_topimage.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 50,
        ),
        children: const [
          HomeTop(),
          verticalSpaceLarge,
          HomeTitle(),
          verticalSpaceTiny,
          HomeSub(),
          verticalSpaceLarge,
          HomeTopImage()
        ],
      ),
    );
  }
}
