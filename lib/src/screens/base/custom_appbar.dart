import 'rounded_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/styles.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Key? key,
  }) : super(key: key);

  static AppBar build(
    BuildContext context, {
    String? title,
    Icon? icon,
    PreferredSizeWidget? bottom,
    List<Widget>? actions,
  }) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorResources.blueColor,
        statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      backgroundColor: ColorResources.blueColor,
      elevation: 0,
      leading: RoundeIconButton(
        icon: icon ??
            const Icon(
              Icons.arrow_back_ios_new,
              color: ColorResources.blueColor,
              size: 17,
            ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Center(
        child: title != null
            ? Text(
                "$title      ",
                overflow: TextOverflow.ellipsis,
                style: defaultSemiBold.copyWith(
                  color: ColorResources.whiteColor,
                  fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
                ),
              )
            : null,
      ),
      actions: actions,
      bottom: bottom,
    );
  }
}
