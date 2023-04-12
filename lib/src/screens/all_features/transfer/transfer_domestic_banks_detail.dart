import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/color_resources.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/images.dart';
import '../../base/custom_appbar.dart';
import '../../base/custom_dialogs.dart';
import '../../base/custom_text_button.dart';
import '../../base/custom_text_field.dart';
import '../../base/information_list_tile.dart';
import '../../base/rounded_elevated_button.dart';

class TransferDomesticDetailScreen extends StatelessWidget {
  const TransferDomesticDetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(
        context,
        title: "Transfer to NPAY Walllet",
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
              SizedBox(
                width: Dimensions.getScreenSize(context).width * .8,
                child: InformationListTile(
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Images.logo,
                        width: 42,
                      ),
                    ],
                  ),
                  // leading: Icon(
                  //   FontAwesomeIcons.buildingColumns,
                  //   color: ColorResources.blueColor,
                  // ),
                  title: "Bank A",
                  trailing: const CustomTextButton(
                    text: "Change",
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
              const CustomTextField(
                hintText: "Enter card number/Account",
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

              const SizedBox(
                width: Dimensions.WIDTH_SIZE_OVER_TOO_LARGE + 50,
                child: CustomTextField(
                  prefixIcon: Icon(
                    FontAwesomeIcons.dollarSign,
                    size: 15,
                  ),
                  hintText: "Enter The Amount",
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              const CustomTextField(
                hintText: "Message (Optional)",
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
              const SizedBox(
                width: Dimensions.WIDTH_SIZE_OVER_TOO_LARGE + 50,
                child: InformationListTile(
                  title: "Save information",
                  trailing: Icon(
                    Icons.toggle_on,
                    color: ColorResources.blueColor,
                    size: 50,
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),

              SizedBox(
                width: Dimensions.WIDTH_SIZE_LARGE,
                child: RoundedElevatedButton(
                  text: "Next",
                  onPressed: () => showFingerPrintDialog(context),
                ),
              )
              //
            ],
          ),
        ),
      ),
    );
  }
}
