import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/color_resources.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/styles.dart';
import '../../base/custom_appbar.dart';
import '../../base/qr_code.dart';


class PaymentCodeScreen extends StatelessWidget {
  const PaymentCodeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(context, title: "Pay code"),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
            SizedBox(
              width: Dimensions.getScreenSize(context).width * .8,
              child: Text(
                'Give this code to the cashier for payment',
                textAlign: TextAlign.center,
                style: defaultRegular.copyWith(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
                  color: ColorResources.greyTextColor,
                ),
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
            SizedBox(
              width: 300,
              child: Text(
                '4779 5223 7427 816303',
                textAlign: TextAlign.center,
                style: defaultMedium.copyWith(
                  letterSpacing: 1.4,
                  fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
                ),
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
            Image.asset(
              "assets/images/barcode.png",
              width: 200,
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            const QrCode(),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            const Text(
              "Automatically update after 59 seconds",
              style: defaultThin,
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            Container(
              height: 44,
              width: 320,
              decoration: Styles.boxDecoration.copyWith(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: ColorResources.greyColor,
                  width: 0.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        FontAwesomeIcons.barcode,
                        size: 15,
                        color: ColorResources.redIconColor,
                      ),
                      SizedBox(height: Dimensions.FONT_SIZE_EXTRA_SMALL - 5),
                      Text(
                        "Pay Code",
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.barcode,
                        size: 15,
                        color: ColorResources.greyColor,
                      ),
                      const SizedBox(
                          height: Dimensions.FONT_SIZE_EXTRA_SMALL - 5),
                      Text(
                        "Pay Code",
                        style: defaultRegular.copyWith(
                          fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
