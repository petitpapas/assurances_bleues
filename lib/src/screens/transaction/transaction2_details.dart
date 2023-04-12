import 'package:flutter/material.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/styles.dart';
import '../base/custom_appbar.dart';
import '../base/custom_dialogs.dart';
import '../base/custom_list_tile.dart';
import '../base/custom_rounded_button.dart';
import '../base/custom_text_button.dart';
import '../base/logo.dart';

class TranscationDetails2Screen extends StatefulWidget {
  const TranscationDetails2Screen({Key? key}) : super(key: key);

  @override
  State<TranscationDetails2Screen> createState() =>
      _TranscationDetails2ScreenState();
}

class _TranscationDetails2ScreenState extends State<TranscationDetails2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(context, title: "Transfer to NPAY Walllet"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.PADDING_SIZE_OVER_LARGE,
            vertical: Dimensions.PADDING_SIZE_SMALL,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Funds",
                style: defaultMedium,
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              const CustomListTile(
                leading: Logo(
                  width: 50,
                ),
                title: "NPAY Wallet",
                subTitle: "\$ 20,000",
                trailingIcon: CustomTextButton(text: "Change"),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              const Text(
                "Transaction Details",
                style: defaultMedium,
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              Padding(
                padding: const EdgeInsets.symmetric(
                  // horizontal: Dimensions.PADDING_SIZE_OVER_LARGE,
                  vertical: Dimensions.PADDING_SIZE_SMALL,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Amount of money",
                      style: defaultRegular.copyWith(
                        color: ColorResources.darkBlueTextColor,
                      ),
                    ),
                    Text(
                      "\$ 823",
                      style: defaultMedium.copyWith(
                          color: ColorResources.blackTextColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  // horizontal: Dimensions.PADDING_SIZE_OVER_LARGE,
                  vertical: Dimensions.PADDING_SIZE_SMALL,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transaction fee",
                      style: defaultRegular.copyWith(
                        color: ColorResources.darkBlueTextColor,
                      ),
                    ),
                    Text(
                      "Free",
                      style: defaultMedium.copyWith(
                          color: ColorResources.blackTextColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  // horizontal: Dimensions.PADDING_SIZE_OVER_LARGE,
                  vertical: Dimensions.PADDING_SIZE_SMALL,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: defaultRegular.copyWith(
                        color: ColorResources.darkBlueTextColor,
                      ),
                    ),
                    Text(
                      "\$ 823",
                      style: defaultMedium.copyWith(
                          color: ColorResources.blackTextColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              Center(
                child: CustomRoundedButton(
                  width: 180,
                  buttonText: "CONFRIM",
                  onpressed: () => showFingerPrintDialog(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
