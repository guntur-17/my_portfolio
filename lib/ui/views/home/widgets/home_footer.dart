import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio/model/brand_icon_model.dart';
import 'package:portofolio/service/brand_icon_service.dart';
import 'package:portofolio/ui/common/styles.dart';
import 'package:portofolio/ui/views/home/widgets/footer_widget/brand_icon.dart';

class HomeFooter extends StatefulWidget {
  const HomeFooter({super.key});

  @override
  State<HomeFooter> createState() => _HomeFooterState();
}

class _HomeFooterState extends State<HomeFooter> {
  late List<BrandIconModel> _data;
  // List<Doctor> _foundDoctor = [];

  @override
  initState() {
    _data = iconBrandData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffF45A74)),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.1,
          ),
          Text(
            'Pleasured to know you.',
            style: StyleOnText().ktsBodyLarge(context).copyWith(),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.sizeOf(context).height * 0.02,
                bottom: MediaQuery.sizeOf(context).height * 0.02),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.4,
              child: Text(
                'You can find me on',
                style: StyleOnText().ktsBodyRegular(context).copyWith(),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _data.length,
                  // data.image!.length
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    ValueKey(_data[index]);
                    final datas = _data[index];
                    return BrandIcon(data: datas);
                  }),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Built with',
                style: StyleOnText().ktsBodyRegular(context).copyWith(),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 8,
              ),
              SvgPicture.asset(
                'assets/flutter.svg',
                height: 32,
              )
            ],
          ),
        ],
      ),
    );
  }
}
