import 'package:assurances_bleues/src/screens/all_features/transfer/phone_book.dart';
import 'package:assurances_bleues/src/screens/all_features/transfer/transfer_domestic_banks.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/color_resources.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/styles.dart';
import '../../base/circular_avatar_with_logo.dart';
import '../../base/custom_appbar.dart';
import '../../base/custom_list_tile.dart';
import '../../base/information_list_tile.dart';
import '../../base/logo.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(context, title: "Transfer"),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PhoneBookScreen(),
                ),
              ),
              child: const Text(
                "Choose the form of money transfer",
                style: defaultMedium,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            InformationListTile(
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Logo(
                    width: 42,
                  ),
                ],
              ),
              title: "Transfer to NPAY wallet",
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: ColorResources.blackColor,
              ),
            ),
            InkWell(
              // onTap: () => const TransferDomesticScreen(),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TransferDomesticScreen(),
                ),
              ),
              child: const InformationListTile(
                leading: Icon(
                  FontAwesomeIcons.buildingColumns,
                  color: ColorResources.blueIconColor,
                ),
                title: "Transfer to domestic banks",
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: ColorResources.blackColor,
                ),
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            const Text(
              "Recent money transfer",
              style: defaultMedium,
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
            const CustomListTile(
              leading: CircularAvatarWithLogo(avatarText: "sdfl"),
              title: "Jordan Warren",
              subTitle: "989 - 598 - 4751",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(avatarText: "Al"),
              title: "Heather Austin",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Julia Castillo",
              subTitle: "240 - 829 - 7809",
            ),
            const CustomListTile(
              leading: CircularAvatarWithLogo(),
              title: "Bobby Wheeler",
              subTitle: "240 - 829 - 7809",
            ),
          ],
        ),
      ),
    );
  }
}
