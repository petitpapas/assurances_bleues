import 'package:flutter/material.dart';
import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';

class TextWithBackground extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color textColor;
  final BoxBorder? border;
  final double? fontSize;
  const TextWithBackground({
    Key? key,
    required this.text,
    this.backgroundColor,
    this.textColor = ColorResources.whiteColor,
    this.border,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor,
        border: border,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3.5, horizontal: 8),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize ?? Dimensions.FONT_SIZE_EXTRA_SMALL,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
