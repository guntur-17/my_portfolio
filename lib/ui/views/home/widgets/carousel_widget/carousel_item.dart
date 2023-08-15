import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portofolio/model/carousel_model.dart';
import 'package:portofolio/ui/common/styles.dart';
import 'package:portofolio/ui/views/home/widgets/carousel_widget/image_showcase.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../common/app_colors.dart';

class CarouselItem extends StatefulWidget {
  final CarouselModel data;
  const CarouselItem({super.key, required this.data});

  @override
  State<CarouselItem> createState() => _CarouselItemState();
}

class _CarouselItemState extends State<CarouselItem> {
  bool isHovering = false;
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
                widget.data.image!
                    .singleWhere((element) => element.id == 1)
                    .image!,
                width: getValueForScreenType(
                    context: context, mobile: 160, desktop: 240, tablet: 192),
                fit: getValueForScreenType(
                  context: context,
                  desktop: BoxFit.fitHeight,
                  tablet: BoxFit.fitHeight,
                  mobile: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.05,
            ),
            SizedBox(
              width: getValueForScreenType(
                  context: context,
                  mobile: MediaQuery.sizeOf(context).width * 0.3,
                  desktop: MediaQuery.sizeOf(context).width * 0.5,
                  tablet: MediaQuery.sizeOf(context).width * 0.4),
              // width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.data.name!,
                          style: StyleOnText()
                              .ktsBodyLarge(context)
                              .copyWith(color: kcBlack),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        widget.data.url! == "null"
                            ? Container()
                            : InkWell(
                                onHover: (hovering) {
                                  setState(() {
                                    isHovering = hovering;
                                  });
                                },
                                onTap: () {
                                  launchUrlString(widget.data.url!);
                                },
                                child: Icon(
                                  FontAwesomeIcons.googlePlay,
                                  color: isHovering
                                      ? Color(0xff346480)
                                      : Colors.black,
                                ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Text(
                      widget.data.about!,
                      style: StyleOnText()
                          .ktsBodyRegular(context)
                          .copyWith(color: kcBlack),
                    ),
                  ),
                  SizedBox(
                    height: getValueForScreenType(
                        context: context, mobile: 0, desktop: 200, tablet: 100),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: getValueForScreenType(
                          context: context, mobile: 0, desktop: 7, tablet: 5),
                      // data.image!.length
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: ((context, index) {
                        ValueKey(widget.data.image![index]);
                        final datas = widget.data.image![index];
                        // print(doctor);
                        return ImageShowcase(data: datas);
                      }),
                    ),
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
