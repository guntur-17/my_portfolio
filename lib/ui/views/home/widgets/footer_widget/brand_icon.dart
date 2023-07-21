import 'package:flutter/material.dart';
import 'package:portofolio/model/brand_icon_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BrandIcon extends StatefulWidget {
  final BrandIconModel data;
  const BrandIcon({super.key, required this.data});

  @override
  State<BrandIcon> createState() => _BrandIconState();
}

class _BrandIconState extends State<BrandIcon> {
  bool isHovering = false;

  void launchEmailSubmission() async {
    final Uri params = Uri(
        scheme: 'mailto',
        path: 'guntur.workd@gmail.com',
        query: 'subject=Default Subject&body=Default body');
    String url = params.toString();
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onHover: (hovering) {
          setState(() {
            isHovering = hovering;
          });
        },
        onTap: () {
          widget.data.id == 3
              ? launchEmailSubmission()
              : launchUrlString(widget.data.url!);
        },
        child: Container(
          decoration: BoxDecoration(
              color: isHovering ? Colors.white : Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              widget.data.icon,
              color: isHovering ? Color(0xffF45A74) : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
