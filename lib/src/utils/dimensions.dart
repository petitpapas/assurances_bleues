import 'package:flutter/material.dart';

class Dimensions {
  static const double FONT_SIZE_EXTRA_SMALL = 10.0;
  static const double FONT_SIZE_SMALL = 12.0;
  static const double FONT_SIZE_DEFAULT = 15.0;
  static const double FONT_SIZE_EXTRA_LARGE = 18.0;
  static const double FONT_SIZE_LARGE = 20.0;
  static const double FONT_SIZE_OVER_LARGE = 24.0;
  static const double FONT_SIZE_OVER_TOO_LARGE = 32.0;

  static const double WIDTH_SIZE_EXTRA_SMALL = 20.0;
  static const double WIDTH_SIZE_SMALL = 60.0;
  static const double WIDTH_SIZE_DEFAULT = 100.0;
  static const double WIDTH_SIZE_LARGE = 150.0;
  static const double WIDTH_SIZE_EXTRA_LARGE = 200.0;
  static const double WIDTH_SIZE_OVER_LARGE = 250.0;
  static const double WIDTH_SIZE_OVER_TOO_LARGE = 300.0;

  static const double RADIUS_SIZE_DEFAULT = 18.0;

  static const double PADDING_SIZE_EXTRA_TOO_SMALL = 2.0;
  static const double PADDING_SIZE_EXTRA_SMALL = 5.0;
  static const double PADDING_SIZE_SMALL = 10.0;
  static const double PADDING_SIZE_DEFAULT = 15.0;
  static const double PADDING_SIZE_LARGE = 20.0;
  static const double PADDING_SIZE_EXTRA_LARGE = 25.0;
  static const double PADDING_SIZE_OVER_LARGE = 30.0;
  static const double PADDING_SIZE_OVER_TOO_LARGE = 35.0;

  static const int MESSAGE_INPUT_LENGTH = 250;
  static const double NOTIFICATION_IMAGE_SIZE = 70.0;
  static const double WEB_SCREEN_WIDTH = 1170.0;

  static Size getScreenSize(BuildContext context) =>
      MediaQuery.of(context).size;
}
