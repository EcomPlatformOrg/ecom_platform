import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../config/constants.dart';


class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: logoPaddingLeft, right: logoPaddingRight),
      child: SvgPicture.asset(
        'assets/Hipster_HeroLogo.svg',
        fit: BoxFit.contain,
        height: logoHeight,
        width: logoWidth,
      ),
    );
  }
}
