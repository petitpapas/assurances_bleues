import 'package:flutter/material.dart';
import 'circular_avatar_with_logo.dart';
import 'custom_list_tile.dart';
import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';

class CustomListTileWithCheckBox extends StatelessWidget {
  const CustomListTileWithCheckBox({
    Key? key,
    required this.title,
    required this.subTitle,
    this.imgSrc,
    this.isChecked = false,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String? imgSrc;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isChecked ? Icons.check_circle : Icons.circle_outlined,
            color: isChecked
                ? ColorResources.blueColor
                : ColorResources.lightBlueButton,
          ),
          const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
          CircularAvatarWithLogo(
            avatarBackgroundColor: ColorResources.lightBlueButton,
            avatarText: title,
          ),
        ],
      ),
      title: title,
      subTitle: subTitle,
    );
  }
}
