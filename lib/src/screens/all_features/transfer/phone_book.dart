import 'package:assurances_bleues/src/screens/all_features/transfer/transfer_npay_wallet.dart';
import 'package:flutter/material.dart';

import '../../../utils/color_resources.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/styles.dart';
import '../../base/circular_avatar_with_logo.dart';
import '../../base/custom_appbar.dart';
import '../../base/custom_button.dart';
import '../../base/custom_list_tile.dart';
import '../../base/custom_text_field.dart';

class PhoneBookScreen extends StatelessWidget {
  const PhoneBookScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(
        context,
        title: "PhoneBook",
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
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
        child: ListView(
          shrinkWrap: true,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TransferNPAYWallletScreen(),
                ),
              ),
              leading: const CircularAvatarWithLogo(
                avatarText: "Warren",
              ),
              title: "Jordan Warren",
              subTitle: "989 - 598 - 4751",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(
                avatarText: "Warren",
              ),
              title: "Heather Austin",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(
                avatarText: "Warren",
              ),
              title: "Julia Castillo",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(
                avatarText: "Warren",
              ),
              title: "Bobby Wheeler",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(
                avatarText: "Warren",
              ),
              title: "Heather Austin",
              subTitle: "240 - 829 - 7809",
              trailingIcon: CustomButton(
                height: 30,
                text: "Invite",
                width: 75,
                backgroundColor: ColorResources.blueColor,
                backgroundColorTransprency: .1,
              ),
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Julia Castillo",
              subTitle: "240 - 829 - 7809",
              trailingIcon: CustomButton(
                height: 30,
                text: "Invite",
                width: 75,
                backgroundColor: ColorResources.blueColor,
                backgroundColorTransprency: .1,
              ),
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Julia Castillo",
              subTitle: "240 - 829 - 7809",
              trailingIcon: CustomButton(
                height: 30,
                text: "Invite",
                width: 75,
                backgroundColor: ColorResources.blueColor,
                backgroundColorTransprency: .1,
              ),
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Julia Castillo",
              subTitle: "240 - 829 - 7809",
              trailingIcon: CustomButton(
                height: 30,
                text: "Invite",
                width: 75,
                backgroundColor: ColorResources.blueColor,
                backgroundColorTransprency: .1,
              ),
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Julia Castillo",
              subTitle: "240 - 829 - 7809",
              trailingIcon: CustomButton(
                height: 30,
                text: "Invite",
                width: 75,
                backgroundColor: ColorResources.blueColor,
                backgroundColorTransprency: .1,
              ),
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Julia Castillo",
              subTitle: "240 - 829 - 7809",
              trailingIcon: CustomButton(
                height: 30,
                text: "Invite",
                width: 75,
                backgroundColor: ColorResources.blueColor,
                backgroundColorTransprency: .1,
              ),
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Julia Castillo",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Bobby Wheeler",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Heather Austin",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Julia Castillo",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Bobby Wheeler",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Heather Austin",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Julia Castillo",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Bobby Wheeler",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Heather Austin",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Julia Castillo",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Bobby Wheeler",
              subTitle: "240 - 829 - 7809",
            ),
          ],
        ),
      ),
    );
  }
}
