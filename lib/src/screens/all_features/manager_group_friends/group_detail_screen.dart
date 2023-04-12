import 'package:flutter/material.dart';

import '../../../utils/color_resources.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/styles.dart';
import '../../base/all_features_cards.dart';
import '../../base/custom_appbar.dart';
import '../../base/custom_dialogs.dart';
import '../../base/custom_list_tile_with_checkbox.dart';
import '../../base/custom_text_button.dart';
import '../../base/information_list_tile.dart';
import '../../base/rounded_elevated_button.dart';

class GroupDetailScreenScreen extends StatelessWidget {
  const GroupDetailScreenScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(
        context,
        title: "Group",
        actions: [
          InkWell(
            onTap: () => customDialogWithChild(
              context,
              backgroundColor: Colors.transparent,
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  RoundedElevatedButton(
                    text: "DELETE GROUP",
                    onPressed: () {
                      Navigator.pop(context);
                      customDialog(
                        context,
                        title: "Delete Group",
                        subtitle: "You really want to delete this group?",
                        firstButtonText: "No",
                        secondButtonText: "Yes",
                        dialogHeight: 160,
                      );
                    },
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.PADDING_SIZE_OVER_TOO_LARGE + 50,
                      vertical: Dimensions.PADDING_SIZE_DEFAULT - 2,
                    ),
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                  const RoundedElevatedButton(
                    backgroundColor: ColorResources.whiteColor,
                    textWidget: Text(
                      "CLOSE",
                      style: defaultMedium,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.PADDING_SIZE_OVER_TOO_LARGE + 80,
                      vertical: Dimensions.PADDING_SIZE_DEFAULT - 2,
                    ),
                  ),
                ],
              ),
            ),
            child: const Icon(
              Icons.more_horiz,
              color: ColorResources.whiteColor,
            ),
          ),
          const SizedBox(width: Dimensions.PADDING_SIZE_EXTRA_SMALL),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_OVER_LARGE),
        child: Center(
          child: ListView(
            children: [
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
              const Icon(
                Icons.people,
                size: 80,
                color: ColorResources.blueColor,
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
              SizedBox(
                width: Dimensions.getScreenSize(context).width * .95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: Dimensions.getScreenSize(context).width * .7,
                      child: Text(
                        "Alex Hartman, Casey Bowman, Dev…",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: defaultRegular.copyWith(
                          fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.edit,
                      color: ColorResources.lightBlueButton,
                    )
                  ],
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Transfer(),
                  RequestMoneyTransfer(),
                  GiveGifts(),
                ],
              ),
              InformationListTile(
                leading: Text(
                  "Members list",
                  style: defaultMedium.copyWith(
                    fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
                  ),
                ),
                trailing: const CustomTextButton(
                  text: "Change",
                ),
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
            ],
          ),
        ),
      ),
    );
  }
}
