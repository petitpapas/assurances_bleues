import 'package:flutter/material.dart';

import '../../../utils/dimensions.dart';
import '../../base/custom_appbar.dart';
import '../../base/custom_dialogs.dart';
import '../../base/information_list_tile.dart';
import '../../base/rounded_elevated_button.dart';

class WithdrawConfirmScreen extends StatelessWidget {
  const WithdrawConfirmScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(context, title: "Withdrawal"),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
        child: Column(
          children: [
            const SizedBox(
              height: Dimensions.PADDING_SIZE_OVER_LARGE,
            ),
            const InformationListTile(
              title: "Withdraw to bank:",
              trailingText: "Bank A",
            ),
            const InformationListTile(
              title: "Amount of money:",
              trailingText: "\$ 1,000",
            ),
            const InformationListTile(
              title: "Transaction Fee:",
              trailingText: "Free",
            ),
            const InformationListTile(
              title: "Total:",
              trailingText: "\$ 1,000",
            ),
            SizedBox(
              width: 170,
              child: RoundedElevatedButton(
                text: "Confirm",
                onPressed: () => showFaceDialog(
                  context,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
