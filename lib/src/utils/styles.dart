import 'package:flutter/material.dart';
import 'color_resources.dart';
import 'dimensions.dart';

class Styles {
  static final List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.17),
      spreadRadius: 1,
      blurRadius: 7,
      offset: const Offset(0, 3), // changes position of shadow
    ),
  ];

  static const BoxDecoration boxDecoration = BoxDecoration(
    color: ColorResources.whiteColor,
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );
  static final BoxDecoration boxDecorationWithShadow = BoxDecoration(
    color: ColorResources.whiteColor,
    boxShadow: Styles.boxShadow,
    borderRadius: const BorderRadius.all(
      Radius.circular(12),
    ),
  );
}

const defaultRegular = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w400,
  color: ColorResources.blackColor,
);

const defaultThin = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Dimensions.FONT_SIZE_SMALL,
  fontWeight: FontWeight.w200,
  color: ColorResources.blackColor,
);
const defaultSemiBold = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  color: ColorResources.blackColor,
  fontWeight: FontWeight.w500,
);
const defaultMedium = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  color: ColorResources.blackColor,
  fontWeight: FontWeight.w600,
);

const defaultBold = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w700,
);
const defaultExtraBold = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w900,
);
const defaultRegularLarge = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Dimensions.FONT_SIZE_LARGE,
  fontWeight: FontWeight.w700,
);

const defaultRegularOverTooLarge = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: Dimensions.FONT_SIZE_OVER_TOO_LARGE,
  fontWeight: FontWeight.w700,
);
