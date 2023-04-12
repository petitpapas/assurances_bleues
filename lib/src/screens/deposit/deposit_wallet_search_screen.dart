import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/styles.dart';
import '../base/custom_floating_action_button.dart';
import '../base/custom_list_tile.dart';
import '../base/custom_text_field.dart';
import '../base/rounded_icon_button.dart';


class DepositWalletSearchScreen extends StatelessWidget {
  const DepositWalletSearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.blueColor,
        elevation: 0,
        leading: RoundeIconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: ColorResources.blueColor,
            size: 17,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            "Deposit Into The Wallet      ",
            overflow: TextOverflow.ellipsis,
            style: defaultSemiBold.copyWith(
              color: ColorResources.whiteColor,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
          child: Column(
            children: const [
              SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              CustomTextField(
                hintText: "10,0000",
                prefixIconData: FontAwesomeIcons.dollarSign,
                // showBorder: true,
                showEnabledBorder: true,
              ),
              SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              ListTile(
                title: Text(
                  "Funds",
                  style: defaultMedium,
                ),
                trailing: Icon(
                  Icons.info_outline,
                  color: ColorResources.colorPrimary,
                ),
              ),
              CustomListTile(
                title: "Bank A",
                subTitle: "Free Charge",
                trailingIcon: Icon(
                  Icons.check,
                  color: ColorResources.blueColor,
                ),
              ),
              CustomListTile(
                title: "Bank B",
                subTitle: "Free recharge",
              ),
              CustomListTile(
                title: "Bank C",
                subTitle: "Only services payment",
                trailingIcon: Icon(
                  Icons.info_outline,
                  color: ColorResources.colorPrimary,
                ),
              ),
              CustomListTile(
                title: "Another Funds",
                subTitle: "ATM cards/ International cards",
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const CustomFloatingActionButton(
        text: 'Next',
      ),
    );
  }
}
