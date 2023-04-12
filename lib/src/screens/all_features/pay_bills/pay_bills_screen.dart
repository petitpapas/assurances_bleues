import 'package:flutter/material.dart';

import '../../../utils/color_resources.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/styles.dart';
import '../../base/all_features_cards.dart';
import '../../base/custom_appbar.dart';
import '../../base/custom_list_tile.dart';
import '../../base/rounded_icon_button.dart';

class PayBillsScreen extends StatelessWidget {
  const PayBillsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(
        context,
        title: "Add new invoices",
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
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: Dimensions.PADDING_SIZE_DEFAULT,
                top: Dimensions.PADDING_SIZE_EXTRA_LARGE,
              ),
              child: Text(
                "Pay bills",
                style: defaultMedium.copyWith(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
                ),
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ElectricityPayment(),
                WaterPayment(),
                Airfare(),
              ],
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Internet(),
                ConsumerLoans(),
                Phone(),
              ],
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            Row(
              children: const [
                Apartment(),
                SizedBox(width: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
                TuitionFree(),
              ],
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            const Padding(
              padding: EdgeInsets.only(
                left: Dimensions.PADDING_SIZE_LARGE,
              ),
              child: Text(
                "Recent",
                style: defaultMedium,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.image,
                    color: ColorResources.blueColor,
                  ),
                  SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                  Text(
                    "City Electricity A",
                    style: defaultMedium,
                  ),
                ],
              ),
            ),
            CustomListTile(
              title: "Katharina",
              subTitle: "CEA 63000225657",
              trailingIcon: Text(
                "Paid",
                style: defaultSemiBold.copyWith(
                  color: ColorResources.greenTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
