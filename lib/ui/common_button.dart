import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../app_theme.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Color color;
  final double horizontalPadding;
  final VoidCallback callback;
  const CommonButton({
    required this.text,
    required this.color,
    required this.callback,
    Key? key,
    this.horizontalPadding = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: color)))),
      child: Padding(
        padding:
            EdgeInsets.only(top: 15, bottom: 14),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: white, fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
