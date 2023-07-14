import 'package:portofolio/ui/common/app_colors.dart';
import 'package:portofolio/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/ui/views/home/widgets/home_top.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';
import 'widgets/home_subtitle.dart';
import 'widgets/home_title.dart';
import 'widgets/home_topimage.dart';

class HomeViewTablet extends ViewModelWidget<HomeViewModel> {
  const HomeViewTablet({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25),
            child: SizedBox(
              width: 848,
              height: 750,
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      HomeTop(),
                      verticalSpaceLarge,
                      HomeTitle(),
                      verticalSpaceTiny,
                      HomeSub(),
                      verticalSpaceLarge,
                    ],
                  ),
                  HomeTopImage()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
