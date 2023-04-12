import 'package:flutter/material.dart';

import '../../utils/dimensions.dart';
import '../base/custom_appbar.dart';
import '../base/custom_dialogs.dart';
import '../base/custom_rounded_button.dart';
import '../base/information_list_tile.dart';

class TransactionInformationScreen extends StatelessWidget {
  const TransactionInformationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(context, title: "Transaction Information"),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
        child: Column(
          children: [
            const InformationListTile(
              title: "Funds",
              trailingText: "Bank A",
            ),
            const InformationListTile(
              title: "Amount of money:",
              trailingText: "\$ 10,000",
            ),
            const InformationListTile(
              title: "Transaction Fee:",
              trailingText: "Free",
            ),
            const InformationListTile(
              title: "Total:",
              trailingText: "\$ 10,000",
            ),
            CustomRoundedButton(
              buttonText: "Confirm",
              width: Dimensions.getScreenSize(context).width * .5,
              onpressed: () => showFingerPrintDialog(context),
            ),
          ],
        ),
      ),
    );
  }
}
