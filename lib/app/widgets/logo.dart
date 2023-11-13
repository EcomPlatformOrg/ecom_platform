// lib/app/widgets/logo.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/constants.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: logoPaddingLeft, right: logoPaddingRight),
      child: SvgPicture.asset(
        'assets/Hipster_HeroLogo2.svg',
        // fit: BoxFit.contain,
        height: logoHeight,
        width: logoWidth,
      ),
    );
  }
}
