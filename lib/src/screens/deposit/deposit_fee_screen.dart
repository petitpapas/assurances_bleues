import 'package:flutter/material.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/styles.dart';
import '../base/rounded_icon_button.dart';

class DepositFeeScreen extends StatelessWidget {
  const DepositFeeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.blueColor,
        elevation: 0,
        leading: RoundeIconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: ColorResources.blueColor,
            size: 17,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            "Deposit Into The Wallet",
            style: defaultSemiBold.copyWith(
              color: ColorResources.whiteColor,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Source of money linked banks',
                  style: defaultMedium.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Recharge fee',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
                trailing: Text(
                  'Free',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Minimum amount',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
                trailing: Text(
                  '\$ 5.00',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Maximum amount',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
                trailing: Text(
                  '\$ 800.000',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
              ),

              //
              const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
              ListTile(
                title: Text(
                  'ATM card source',
                  style: defaultMedium.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Recharge fee',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
                trailing: Text(
                  '\$  0.70 + 1%',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Minimum amount',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
                trailing: Text(
                  '\$ 5.00',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Maximum amount',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
                trailing: Text(
                  '\$ 800.000',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),

              //
              ListTile(
                title: Text(
                  'International card source',
                  style: defaultMedium.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Recharge fee',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
                trailing: Text(
                  '\$  1.00 + 1.5%',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Minimum amount',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
                trailing: Text(
                  '\$ 5.00',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Maximum amount',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
                trailing: Text(
                  '\$ 800.000',
                  style: defaultRegular.copyWith(
                    color: ColorResources.blackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
