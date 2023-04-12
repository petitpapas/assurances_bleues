import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../base/rounded_icon_button.dart';
import '../base/text_with_background.dart';
import '../transaction/transaction_fail_details_screen.dart';
import '../transaction/transaction_processing_details_screen.dart';
import '../transaction/transaction_success_details_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
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
            "Notifications",
            style: defaultSemiBold.copyWith(
              color: ColorResources.whiteColor,
            ),
          ),
        ),
        actions: [
          // SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
          SvgPicture.asset(Images.allReadAppBar),
          const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TranscationSuccessDetailsScreen(),
                ),
              ),
              child: Slidable(
                key: const ValueKey(0),
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (BuildContext context) {},
                      backgroundColor: ColorResources.greyLightTwoColor,
                      foregroundColor: Colors.white,
                      icon: FontAwesomeIcons.readme,
                      label: 'All Read',
                    ),
                    SlidableAction(
                      onPressed: (BuildContext context) {},
                      backgroundColor: ColorResources.redIconColor,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                  ],
                ),
                child: Container(
                  height: 130,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 12,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 12,
                  ),
                  decoration: Styles.boxDecoration.copyWith(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(Images.processing),
                          TextWithBackground(
                            text: "Successful ",
                            fontSize: Dimensions.FONT_SIZE_SMALL,
                            textColor: ColorResources.greenTextColor,
                            backgroundColor:
                                ColorResources.greenTextColor.withOpacity(0.1),
                          ),
                        ],
                      ),
                      const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                      const Text(
                        "Pay \$ 300 City Electricity A",
                        style: defaultMedium,
                      ),
                      const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                      Text(
                        "March 28, 2019",
                        style: defaultRegular.copyWith(
                          color: ColorResources.darkBlueTextColor,
                          fontSize: Dimensions.FONT_SIZE_SMALL,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const TranscationProcessingDetailsScreen(),
                  )),
              child: Container(
                height: 130,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 12,
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 12,
                ),
                decoration: Styles.boxDecoration.copyWith(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(Images.Deposit),
                        // const Icon(
                        //   FontAwesomeIcons.wallet,
                        //   color: ColorResources.blueIconColor,
                        // ),
                        TextWithBackground(
                          text: "Processing ",
                          fontSize: Dimensions.FONT_SIZE_SMALL,
                          textColor: ColorResources.orangeTextColor,
                          backgroundColor:
                              ColorResources.orangeTextColor.withOpacity(0.1),
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                    const Text(
                      "Top up \$200 to your wallet from bank A",
                      style: defaultMedium,
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                    Text(
                      "March 28, 2019",
                      style: defaultRegular.copyWith(
                        color: ColorResources.darkBlueTextColor,
                        fontSize: Dimensions.FONT_SIZE_SMALL,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TranscationFailDetailsScreen(),
                ),
              ),
              child: Container(
                height: 130,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 12,
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 12,
                ),
                decoration: Styles.boxDecoration.copyWith(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          FontAwesomeIcons.wallet,
                          color: ColorResources.blueIconColor,
                        ),
                        TextWithBackground(
                          text: "Fail ",
                          fontSize: Dimensions.FONT_SIZE_SMALL,
                          textColor: ColorResources.redTextColor,
                          backgroundColor:
                              ColorResources.redTextColor.withOpacity(0.1),
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                    const Text(
                      "Transfer \$ 721 to Alex Hartman",
                      style: defaultMedium,
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                    Text(
                      "March 28, 2019",
                      style: defaultRegular.copyWith(
                        color: ColorResources.darkBlueTextColor,
                        fontSize: Dimensions.FONT_SIZE_SMALL,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 130,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 12,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 12,
              ),
              decoration: Styles.boxDecoration.copyWith(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        Images.processing,
                        width: 30,
                      ),
                      TextWithBackground(
                        text: "Successful ",
                        fontSize: Dimensions.FONT_SIZE_SMALL,
                        textColor: ColorResources.greenTextColor,
                        backgroundColor:
                            ColorResources.greenTextColor.withOpacity(0.1),
                      ),
                    ],
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  const Text(
                    "Pay \$ 300 City Electricity A",
                    style: defaultMedium,
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  Text(
                    "March 28, 2019",
                    style: defaultRegular.copyWith(
                      color: ColorResources.darkBlueTextColor,
                      fontSize: Dimensions.FONT_SIZE_SMALL,
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
