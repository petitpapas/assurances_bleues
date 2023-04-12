import 'package:flutter/material.dart';

import '../../../utils/color_resources.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/styles.dart';
import '../../base/circular_avatar_with_logo.dart';
import '../../base/custom_appbar.dart';
import '../../base/custom_list_tile_with_checkbox.dart';
import '../../base/custom_text_field.dart';
import '../../base/rounded_elevated_button.dart';
import 'group_detail_screen.dart';

class CreateGroupScreen extends StatelessWidget {
  const CreateGroupScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(
        context,
        title: "Request Money Transfer",
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            color: ColorResources.colorPrimary,
            width: Dimensions.getScreenSize(context).width,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_SMALL,
              ),
              child: CustomTextField(
                cursorColor: ColorResources.whiteColor,
                prefixIconColor: ColorResources.whiteColor,
                prefixIcon: const Icon(
                  Icons.search,
                  color: ColorResources.whiteColor,
                ),
                hintText: "Enter name or phone number",
                hintStyle: defaultRegular.copyWith(
                  color: ColorResources.whiteColor,
                  fontSize: Dimensions.FONT_SIZE_DEFAULT - 3,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 55,
        decoration: const BoxDecoration(
          color: ColorResources.whiteColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.PADDING_SIZE_DEFAULT,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CircularAvatarWithLogo(
                      avatarText: "N",
                      avatarBackgroundColor: ColorResources.lightBlueButton,
                    ),
                    CircularAvatarWithLogo(
                      avatarText: "D",
                      avatarBackgroundColor: ColorResources.lightBlueButton,
                    ),
                    CircularAvatarWithLogo(
                      avatarBackgroundColor: ColorResources.lightBlueButton,
                    ),
                    CircularAvatarWithLogo(
                      avatarBackgroundColor: ColorResources.lightBlueButton,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: Dimensions.PADDING_SIZE_LARGE),
              RoundedElevatedButton(
                text: "Next",
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GroupDetailScreenScreen(),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.FONT_SIZE_OVER_LARGE,
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
        child: ListView(shrinkWrap: true, children: [
          const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
          Text(
            "Personal",
            style: defaultMedium.copyWith(
                fontSize: Dimensions.FONT_SIZE_DEFAULT + 2),
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          const CustomListTileWithCheckBox(
            isChecked: true,
            title: "Jordan Warren",
            subTitle: "989 - 598 - 4751",
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          const CustomListTileWithCheckBox(
            title: "Jordan Warren",
            subTitle: "989 - 598 - 4751",
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          const CustomListTileWithCheckBox(
            title: "Jordan Warren",
            subTitle: "989 - 598 - 4751",
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          const CustomListTileWithCheckBox(
            title: "Jordan Warren",
            subTitle: "989 - 598 - 4751",
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          const CustomListTileWithCheckBox(
            title: "Jordan Warren",
            subTitle: "989 - 598 - 4751",
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          const CustomListTileWithCheckBox(
            title: "Jordan Warren",
            subTitle: "989 - 598 - 4751",
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          const CustomListTileWithCheckBox(
            title: "Jordan Warren",
            subTitle: "989 - 598 - 4751",
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          const CustomListTileWithCheckBox(
            title: "Jordan Warren",
            subTitle: "989 - 598 - 4751",
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          const CustomListTileWithCheckBox(
            title: "Jordan Warren",
            subTitle: "989 - 598 - 4751",
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          const CustomListTileWithCheckBox(
            title: "Jordan Warren",
            subTitle: "989 - 598 - 4751",
          ),
        ]),
      ),
    );
  }
}
