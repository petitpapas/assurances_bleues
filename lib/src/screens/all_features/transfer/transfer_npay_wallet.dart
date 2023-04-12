import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/color_resources.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/styles.dart';
import '../../base/custom_appbar.dart';
import '../../base/custom_text_field.dart';
import '../../base/rounded_elevated_button.dart';
import '../../transaction/transaction2_details.dart';

class TransferNPAYWallletScreen extends StatelessWidget {
  const TransferNPAYWallletScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(
        context,
        title: "Transfer to NPAY Walllet",
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            CircleAvatar(
              backgroundColor: ColorResources.lightBlueButton,
              radius: 35,
              child: Text(
                "A",
                style: defaultRegular.copyWith(
                  fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                  color: ColorResources.whiteColor,
                ),
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
            Text(
              "Alex Hartman",
              style: defaultMedium.copyWith(
                fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
            const Text(
              "240 - 829 - 7809",
              style: defaultRegular,
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            SizedBox(
              width: Dimensions.getScreenSize(context).width * .70,
              child: const CustomTextField(
                prefixIcon: Icon(
                  FontAwesomeIcons.dollarSign,
                  size: 15,
                ),
                hintText: "Enter The Amount",
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
            SizedBox(
              width: Dimensions.getScreenSize(context).width * .70,
              child: const CustomTextField(
                hintText: "Message (Optional)",
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

            SizedBox(
              width: Dimensions.WIDTH_SIZE_LARGE,
              child: RoundedElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TranscationDetails2Screen(),
                  ),
                ),
                text: "Next",
              ),
            )
            //
          ],
        ),
      ),
    );
  }
}
