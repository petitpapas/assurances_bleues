import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../base/custom_appbar.dart';
import '../base/text_with_background.dart';

class TranscationFailDetailsScreen extends StatefulWidget {
  const TranscationFailDetailsScreen({Key? key}) : super(key: key);

  @override
  State<TranscationFailDetailsScreen> createState() =>
      _TranscationFailDetailsScreenState();
}

class _TranscationFailDetailsScreenState
    extends State<TranscationFailDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(context, title: "Transaction Details"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            Container(
              height: 140,
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_DEFAULT,
                vertical: Dimensions.PADDING_SIZE_DEFAULT,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(Images.transfer),
                      const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                      const Text(
                        "Receive money from Alex Hartman",
                        style: defaultMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "March 28/2019",
                        style: defaultRegular.copyWith(
                          color: ColorResources.darkBlueTextColor,
                        ),
                      ),
                      const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                      const Text(
                        "\$ 723",
                        style: defaultMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Transaction status",
                        style: defaultRegular.copyWith(
                          color: ColorResources.darkBlueTextColor,
                        ),
                      ),
// March 28/2019
                      const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),

                      const TextWithBackground(
                        text: "Fail ",
                        fontSize: Dimensions.FONT_SIZE_DEFAULT,
                        textColor: ColorResources.redTextColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_OVER_LARGE,
                vertical: Dimensions.PADDING_SIZE_SMALL,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trading code",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                    ),
                  ),
                  Text(
                    "4175122366",
                    style: defaultMedium.copyWith(
                        color: ColorResources.blackTextColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_OVER_LARGE,
                vertical: Dimensions.PADDING_SIZE_SMALL,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Time",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                    ),
                  ),
                  Text(
                    "10:26, March 28/2019",
                    style: defaultMedium.copyWith(
                        color: ColorResources.blackTextColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_OVER_LARGE,
                vertical: Dimensions.PADDING_SIZE_SMALL,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sender",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                    ),
                  ),
                  Text(
                    "Alex Hartman",
                    style: defaultMedium.copyWith(
                        color: ColorResources.blackTextColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_OVER_LARGE,
                vertical: Dimensions.PADDING_SIZE_SMALL,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Phone Number",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                    ),
                  ),
                  Text(
                    "240 - 829 - 7809",
                    style: defaultMedium.copyWith(
                        color: ColorResources.blackTextColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_OVER_LARGE,
                vertical: Dimensions.PADDING_SIZE_SMALL,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Amount Of Money",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                    ),
                  ),
                  Text(
                    "\$ 230",
                    style: defaultMedium.copyWith(
                        color: ColorResources.blackTextColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_OVER_LARGE,
                vertical: Dimensions.PADDING_SIZE_SMALL,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Message",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
