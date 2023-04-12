import 'package:assurances_bleues/src/screens/all_features/transfer/transfer_domestic_banks_detail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/color_resources.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/styles.dart';
import '../../base/bank_card.dart';
import '../../base/custom_appbar.dart';
import '../../base/custom_text_field.dart';

class TransferDomesticScreen extends StatelessWidget {
  const TransferDomesticScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(
        context,
        title: "Transfer to domestic banks",
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            color: ColorResources.colorPrimary,
            width: Dimensions.getScreenSize(context).width,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_SMALL,
              ),
              child: CustomTextField(
                cursorColor: ColorResources.whiteColor,
                prefixIconColor: ColorResources.whiteColor,
                prefixIcon: const Icon(
                  Icons.search,
                  color: ColorResources.whiteColor,
                ),
                hintText: "Enter the bank name",
                hintStyle: defaultRegular.copyWith(
                  color: ColorResources.whiteColor,
                  fontSize: Dimensions.FONT_SIZE_DEFAULT - 3,
                ),
              ),
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
              " Select the bank",
              style: defaultMedium.copyWith(
                fontSize: Dimensions.FONT_SIZE_DEFAULT + 3,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BankCard(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const TransferDomesticDetailScreen(),
                        )),
                    text: "Bank A",
                    topWidget: const Icon(
                      FontAwesomeIcons.buildingColumns,
                      color: Colors.blue,
                    ),
                  ),
                  const BankCard(
                    text: "Bank B",
                    topWidget: Icon(
                      FontAwesomeIcons.buildingColumns,
                      color: Colors.blue,
                    ),
                  ),
                  const BankCard(
                    text: "Bank C",
                    topWidget: Icon(
                      FontAwesomeIcons.buildingColumns,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  BankCard(
                    text: "Bank A",
                    topWidget: Icon(
                      FontAwesomeIcons.buildingColumns,
                      color: Colors.blue,
                    ),
                  ),
                  BankCard(
                    text: "Bank B",
                    topWidget: Icon(
                      FontAwesomeIcons.buildingColumns,
                      color: Colors.blue,
                    ),
                  ),
                  BankCard(
                    text: "Bank C",
                    topWidget: Icon(
                      FontAwesomeIcons.buildingColumns,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  BankCard(
                    text: "Bank D",
                    topWidget: Icon(
                      FontAwesomeIcons.buildingColumns,
                      color: Colors.blue,
                    ),
                  ),
                  BankCard(
                    text: "Bank E",
                    topWidget: Icon(
                      FontAwesomeIcons.buildingColumns,
                      color: Colors.blue,
                    ),
                  ),
                  BankCard(
                    text: "Bank F",
                    topWidget: Icon(
                      FontAwesomeIcons.buildingColumns,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  BankCard(
                    text: "Bank A",
                    topWidget: Icon(
                      FontAwesomeIcons.buildingColumns,
                      color: Colors.blue,
                    ),
                  ),
                  BankCard(
                    text: "Bank A",
                    topWidget: Icon(
                      FontAwesomeIcons.buildingColumns,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
