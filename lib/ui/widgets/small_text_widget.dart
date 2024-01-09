import 'package:flutter/material.dart';

import '../../assets/styles/app_colors.dart';

class SmallTextWidget extends StatelessWidget {
  const SmallTextWidget({super.key, required this.text, this.color = AppColors.mainColor, this.height = 1.2, this.size = 12});
  final String text;
  final Color color;
  final double size;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: size, color: color, height: height, fontWeight: FontWeight.w400),);
  }
}
