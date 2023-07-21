import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StyleOnText {
  TextStyle ktsBodyLarge(context) {
    return GoogleFonts.openSans(
      fontSize:
          getValueForScreenType(context: context, mobile: 16, desktop: 24),
    );
  }

  TextStyle ktsBodyRegular(context) {
    return GoogleFonts.openSans(
      fontSize:
          getValueForScreenType(context: context, mobile: 12, desktop: 16),
    );
  }

  TextStyle ktsTitleText(context) {
    return GoogleFonts.openSans(
      height: 0.95,
      fontWeight: FontWeight.w600,
      fontSize:
          getValueForScreenType(context: context, mobile: 60, desktop: 80),
    );
  }
}
