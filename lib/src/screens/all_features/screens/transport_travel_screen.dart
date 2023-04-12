import 'package:flutter/material.dart';

import '../../../utils/dimensions.dart';
import '../all_features_sections.dart';


class TransportTravelScreen extends StatelessWidget {
  const TransportTravelScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TransportationTravelSection(),
            SoftwareCopyrightSection(),
            SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            OrderFoodOnlineSection(),
            SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            FunctionSection(),
          ],
        ),
      ),
    );
  }
}
