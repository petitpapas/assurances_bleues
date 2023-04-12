import 'package:flutter/material.dart';

import '../../../utils/dimensions.dart';
import '../all_features_sections.dart';

class PayBillsScreen extends StatelessWidget {
  const PayBillsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          PaybillsSection(),
          SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
          EntertainmentSection(),
          SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
        ],
      ),
    );
  }
}
