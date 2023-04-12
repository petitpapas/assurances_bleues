import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../base/custom_appbar.dart';

class TranscationSuccessDetailsScreen extends StatefulWidget {
  const TranscationSuccessDetailsScreen({Key? key}) : super(key: key);

  @override
  State<TranscationSuccessDetailsScreen> createState() =>
      _TranscationSuccessDetailsScreenState();
}

class _TranscationSuccessDetailsScreenState
    extends State<TranscationSuccessDetailsScreen> {
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
                      SvgPicture.asset(Images.processing),
                      const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                      const Text(
                        "Pay \$ 300 City Electricity A",
                        style: defaultMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pay \$ 300 City Electricity A",
                        style: defaultRegular.copyWith(
                          color: ColorResources.darkBlueTextColor,
                        ),
                      ),
// March 28/2019
                      const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),

                      const Text(
                        "\$ 723",
                        style: defaultMedium,
                      ),
                      // City Electricity A
                      // TextWithBackground(
                      //   text: "Successful ",
                      //   fontSize: Dimensions.FONT_SIZE_SMALL,
                      //   textColor: ColorResources.greenTextColor,
                      //   backgroundColor:
                      //       ColorResources.greenTextColor.withOpacity(0.1),
                      // ),
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

                      Text(
                        "Successful",
                        style: defaultMedium.copyWith(
                            color: const Color(0xffB8E986)),
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
                    "Fund",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                    ),
                  ),
                  Text(
                    "NPAY Wallet",
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
                    "asadsadTime",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                    ),
                  ),
                  Text(
                    "sdfjlkdsjslkajlfkdsjfl",
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
                    "Supplier",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                    ),
                  ),
                  Text(
                    "City Electricity",
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
                    "Customer code",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                    ),
                  ),
                  Text(
                    "CEA 63000225657",
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
                    "Customer",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                    ),
                  ),
                  Text(
                    "Katharina",
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
                    "Address",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                    ),
                  ),
                  Text(
                    "379 West Deerfield Ave.Deland",
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
                    "Payment cycle",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                    ),
                  ),
                  Text(
                    "March",
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
                horizontal: Dimensions.PADDING_SIZE_OVER_LARGE,
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
                horizontal: Dimensions.PADDING_SIZE_OVER_LARGE,
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
          ],
        ),
      ),
    );
  }
}
