import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/color_resources.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/styles.dart';
import '../../base/circular_avatar_with_logo.dart';
import '../../base/custom_appbar.dart';
import '../../base/custom_dialogs.dart';
import '../../base/custom_list_tile.dart';
import '../../base/information_list_tile.dart';
import '../../base/rounded_elevated_button.dart';

class RequestMoneyTransferConfirmScreen extends StatelessWidget {
  const RequestMoneyTransferConfirmScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(
        context,
        title: "Request Money Transfer",
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              const InformationListTile(
                title: "The total amount:",
                trailingText: "\$ 1,000",
              ),
              const InformationListTile(
                title: "Message:",
                trailingText: "Type something",
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
              Text(
                "4 people are required",
                style: defaultMedium.copyWith(
                    fontSize: Dimensions.FONT_SIZE_DEFAULT + 2),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              Text(
                "The amount of money each person loves must be greater than (or equal to) \$ 50 and less than (or equal to) \$ 10,000",
                style: defaultRegular.copyWith(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT - 2,
                  color: ColorResources.greyTextColor,
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              CustomListTile(
                trailingIcon: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      FontAwesomeIcons.dollarSign,
                      size: 17,
                      color: ColorResources.blackColor,
                    ),
                    const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                    Icon(
                      Icons.edit,
                      size: 17,
                      color: ColorResources.blueColor.withOpacity(.3),
                    ),
                  ],
                ),
                leading: const CircularAvatarWithLogo(
                  avatarText: "N",
                  avatarBackgroundColor: ColorResources.lightBlueButton,
                ),
                title: "Jordan Warren",
                subTitle: "989 - 598 - 4751",
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              CustomListTile(
                trailingIcon: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      FontAwesomeIcons.dollarSign,
                      size: 17,
                      color: ColorResources.blackColor,
                    ),
                    const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                    Icon(
                      Icons.edit,
                      size: 17,
                      color: ColorResources.blueColor.withOpacity(.3),
                    ),
                  ],
                ),
                leading: const CircularAvatarWithLogo(
                  avatarText: "N",
                  avatarBackgroundColor: ColorResources.lightBlueButton,
                ),
                title: "Jordan Warren",
                subTitle: "989 - 598 - 4751",
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              CustomListTile(
                trailingIcon: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      FontAwesomeIcons.dollarSign,
                      size: 17,
                      color: ColorResources.blackColor,
                    ),
                    const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                    Icon(
                      Icons.edit,
                      size: 17,
                      color: ColorResources.blueColor.withOpacity(.3),
                    ),
                  ],
                ),
                leading: const CircularAvatarWithLogo(
                  avatarText: "N",
                  avatarBackgroundColor: ColorResources.lightBlueButton,
                ),
                title: "Jordan Warren",
                subTitle: "989 - 598 - 4751",
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              CustomListTile(
                trailingIcon: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      FontAwesomeIcons.dollarSign,
                      size: 17,
                      color: ColorResources.blackColor,
                    ),
                    const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                    Icon(
                      Icons.edit,
                      size: 17,
                      color: ColorResources.blueColor.withOpacity(.3),
                    ),
                  ],
                ),
                leading: const CircularAvatarWithLogo(
                  avatarText: "N",
                  avatarBackgroundColor: ColorResources.lightBlueButton,
                ),
                title: "Jordan Warren",
                subTitle: "989 - 598 - 4751",
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              Center(
                child: RoundedElevatedButton(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.PADDING_SIZE_OVER_TOO_LARGE + 20,
                  ),
                  text: "CONFIRM",
                  onPressed: () => showFingerPrintDialog(context),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            ],
          ),
        ),
      ),
    );
  }
}
