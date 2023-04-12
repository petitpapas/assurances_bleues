import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../base/custom_appbar.dart';
import '../base/custom_rounded_button.dart';
import '../base/information_list_tile.dart';
import '../home/home_screen.dart';

class TransactionSuccessScreen extends StatelessWidget {
  const TransactionSuccessScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(context, title: "Transaction Success"),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_LARGE),
        child: Column(
          children: [
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            SvgPicture.asset(Images.successfulTransaction),

            // const Icon(
            //   FontAwesomeIcons.wallet,
            //   size: 50,
            //   color: ColorResources.colorPrimary,
            // ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            Text(
              "Successful Transaction",
              style: defaultMedium.copyWith(
                fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            SizedBox(
              width: Dimensions.getScreenSize(context).width * .8,
              child: Text(
                "You have successfully transferred money from the bank Bank A to your NPAY wallet",
                textAlign: TextAlign.center,
                style: defaultMedium.copyWith(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT,
                  color: ColorResources.greyColor,
                ),
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
            const InformationListTile(
              title: "Balance in the wallet: ",
              trailingText: "\$ 30,000",
            ),
            const InformationListTile(
              title: "Trading code:",
              trailingText: "2784100995",
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            CustomRoundedButton(
              buttonText: "Main screen",
              width: Dimensions.getScreenSize(context).width * .5,
              onpressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
