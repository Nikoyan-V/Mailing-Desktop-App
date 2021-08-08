import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../app_theme.dart';

class UnderlinedTextInputWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final Color color;
  final bool hasBorder;
  final String fieldName;

  const UnderlinedTextInputWidget({
    required this.child,
    required this.fieldName,
    Key? key,
    this.padding,
    this.color = white,
    this.hasBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: padding,
      child: Column(
        children: [
          Text(
            fieldName,
            style: const TextStyle(color: textBlueColor, fontSize: 16),
          ),
          child,
          SvgPicture.asset(
            'assets/icons/ic_divider.svg',
          )
        ],
      ),
    );
  }
}
