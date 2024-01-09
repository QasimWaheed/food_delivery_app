import 'package:flutter/material.dart';

class BigTextWidget extends StatelessWidget {
  const BigTextWidget({super.key, required this.text, this.color = Colors.black87, this.overflow = TextOverflow.ellipsis, this.size = 20});
  final String text;
  final Color color;
  final double size;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(text, overflow: overflow, maxLines: 1, style: TextStyle(fontSize: size, color: color, fontWeight: FontWeight.w500),);
  }
}
