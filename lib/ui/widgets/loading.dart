import 'package:flutter/material.dart';

import '../../app_theme.dart';
import '../../helpers/screen_size_accessor.dart';

class Loading extends StatelessWidget {
  final Color? color;
  const Loading({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: screenHeight(context),
        child: const Center(
          child: SizedBox(
            width: 32,
            height: 32,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(accentColor),
            ),
          ),
        ),
      );
}
