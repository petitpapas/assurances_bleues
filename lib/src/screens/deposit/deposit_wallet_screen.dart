import 'package:flutter/material.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/styles.dart';
import '../base/bank_card.dart';
import '../base/rounded_icon_button.dart';


class DepositWalletScreen extends StatelessWidget {
  const DepositWalletScreen({Key? key}) : super(key: key);
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
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            Text(
              "    The bank only supports recharge",
              style: defaultMedium.copyWith(
                fontSize: Dimensions.FONT_SIZE_DEFAULT + 3,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  BankCard(text: "Bank A"),
                  BankCard(text: "Bank A"),
                  BankCard(text: "Bank A"),
                ],
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  BankCard(text: "Bank A"),
                  BankCard(text: "Bank A"),
                  SizedBox(),
                ],
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            Text(
              "    International payment cards",
              style: defaultMedium.copyWith(
                fontSize: Dimensions.FONT_SIZE_DEFAULT + 3,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  BankCard(text: "Bank A"),
                  BankCard(text: "Bank A"),
                  BankCard(text: "Bank A"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
