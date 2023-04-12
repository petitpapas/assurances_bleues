import 'package:flutter/material.dart';

import '../../../utils/dimensions.dart';
import '../all_features_sections.dart';

class EntertainmentScreen extends StatelessWidget {
  const EntertainmentScreen({
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
            EntertainmentSection(),
            SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
            ShoppingSection(),
            SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
            TransportationTravelSection(),
            SoftwareCopyrightSection(),
          ],
        ),
      ),
    );
  }
}
