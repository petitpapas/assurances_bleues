import 'package:flutter/material.dart';
import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';

class RoundeIconButton extends StatelessWidget {
  const RoundeIconButton({
    Key? key,
    this.onPressed,
    required this.icon,
    this.circleSize,
  }) : super(key: key);
  final void Function()? onPressed;
  final Icon icon;
  final double? circleSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed ?? () {},
      icon: Container(
        width: circleSize ?? 25,
        height: circleSize ?? 25,
        decoration: BoxDecoration(
          color: ColorResources.whiteColor,
          borderRadius: BorderRadius.circular(
            Dimensions.RADIUS_SIZE_DEFAULT,
          ),
        ),
        child: icon,
      ),
    );
  }
}
