import 'package:flutter/material.dart';

import '../../../utils/dimensions.dart';
import '../all_features_sections.dart';

class PayTransferMoneyScreen extends StatelessWidget {
  const PayTransferMoneyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ReceiveTransferMoneySection(),
          PaybillsSection(),
        ],
      ),
    );
  }
}
