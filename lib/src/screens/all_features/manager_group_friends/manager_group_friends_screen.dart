import 'package:flutter/material.dart';

import '../../../utils/color_resources.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/styles.dart';
import '../../base/custom_appbar.dart';
import '../../base/custom_list_tile.dart';
import '../../base/rounded_elevated_button.dart';
import '../../base/rounded_icon_button.dart';
import 'create_group_screen.dart';

class ManagerGroupFriendsScreen extends StatelessWidget {
  const ManagerGroupFriendsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(
        context,
        title: "Manager Group of Friends",
        actions: [
          const RoundeIconButton(
            icon: Icon(
              Icons.add,
              color: ColorResources.blueColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_OVER_LARGE),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
              const CustomListTile(
                leading: Icon(
                  Icons.person,
                  color: ColorResources.blueColor,
                ),
                title: "Alex Hartman, Casey Bowman",
                subTitle: "Alex Hartman & 3 orthers",
                trailingIcon: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
              const Icon(
                Icons.people,
                size: 100,
                color: ColorResources.blueColor,
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
              SizedBox(
                width: Dimensions.getScreenSize(context).width * .7,
                child: Text(
                  "Create a group of friends to quickly select for later transactions",
                  textAlign: TextAlign.center,
                  style: defaultRegular.copyWith(
                    fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
              RoundedElevatedButton(
                text: "Create",
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateGroupScreen(),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_OVER_TOO_LARGE + 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
