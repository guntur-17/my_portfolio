import 'package:flutter/material.dart';
import 'package:portofolio/model/image_model.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ImageShowcase extends StatelessWidget {
  final ImageModel data;
  const ImageShowcase({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        onTap: () => showDialog(
            builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Colors.transparent,
                  insetPadding: EdgeInsets.all(2),
                  title: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Image.asset(
                      data.image!,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
            context: context),
        child: Image.asset(
          data.image!,
          height:
              getValueForScreenType(context: context, mobile: 0, desktop: 100),
        ),
      ),
    );
  }
}
