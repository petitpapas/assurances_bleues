import 'package:flutter/material.dart';
import '../../utils/color_resources.dart';
import '../../utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    this.onPressed,
    required this.text,
    this.textFontSize,
    this.color,
    this.textStyle,
  }) : super(key: key);
  final void Function()? onPressed;
  final String text;
  final Color? color;
  final double? textFontSize;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ?? () {},
      child: Text(
        text,
        style: (textStyle ?? defaultRegular).copyWith(
          color: color ?? ColorResources.blueColor,
          fontSize: textFontSize,
        ),
      ),
    );
  }
}
