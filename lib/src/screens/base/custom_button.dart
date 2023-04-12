import 'package:flutter/material.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.onPressed,
    this.text,
    this.textWidget,
    this.backgroundColor,
    this.width,
    this.backgroundColorTransprency,
    this.height,
  }) : super(key: key);

  final void Function()? onPressed;
  final String? text;
  final Widget? textWidget;
  final Color? backgroundColor;
  final double? backgroundColorTransprency;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width ?? 210,
        height: height ?? 36,
        decoration: BoxDecoration(
          color:
              backgroundColor?.withOpacity(backgroundColorTransprency ?? 0.2) ??
                  Colors.green.withOpacity(backgroundColorTransprency ?? .2),
          borderRadius: BorderRadius.circular(
            Dimensions.RADIUS_SIZE_DEFAULT,
          ),
        ),
        child: Center(
          child: textWidget ??
              Text(
                text ?? "",
                style: defaultMedium.copyWith(
                  color: backgroundColor ?? ColorResources.greenIconColor,
                ),
              ),
        ),
      ),
    );
  }
}
