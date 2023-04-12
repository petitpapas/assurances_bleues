import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/dimensions.dart';
import '../../utils/images.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    this.fontSize,
    this.widthBetweenText,
    this.width,
  }) : super(key: key);

  final double? fontSize;
  final double? widthBetweenText;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Images.logo,
      width: width ?? Dimensions.WIDTH_SIZE_LARGE,
    );
    // return Row(
    //   mainAxisSize: MainAxisSize.min,
    //   children: [
    //     Text(
    //       'N',
    //       style: defaultRegularOverTooLarge.copyWith(
    //         fontSize: fontSize ?? Dimensions.FONT_SIZE_OVER_LARGE,
    //         color: ColorResources.blueColor,
    //       ),
    //     ),
    //     SizedBox(
    //         width: widthBetweenText ?? Dimensions.PADDING_SIZE_EXTRA_SMALL),
    //     TextWithBackground(
    //       text: "PAY",
    //       backgroundColor: ColorResources.blueColor,
    //       fontSize: fontSize ?? Dimensions.FONT_SIZE_OVER_LARGE,
    //     )
    //   ],
    // );
  }
}
