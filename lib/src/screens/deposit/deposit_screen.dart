import 'package:assurances_bleues/src/screens/deposit/regulations_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/styles.dart';
import '../base/core.dart';
import '../base/custom_appbar.dart';
import '../base/custom_floating_action_button.dart';
import '../base/custom_list_tile.dart';
import '../base/custom_text_field.dart';
import '../transaction/transaction_inforamation.dart';
import 'deposit_fee_screen.dart';
import 'deposit_wallet_screen.dart';

class DepositScreen extends StatefulWidget {
  const DepositScreen({Key? key}) : super(key: key);

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  final amountTextController = TextEditingController();

  @override
  void dispose() {
    amountTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      floatingActionButton: CustomFloatingActionButton(
        text: "NEXT",
        onpressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TransactionInformationScreen(),
          ),
        ),
      ),
      appBar: CustomAppBar.build(
        context,
        title: "Deposit Into The Wallet",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.PADDING_SIZE_SMALL,
          vertical: Dimensions.PADDING_SIZE_DEFAULT,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
              Center(
                child: CustomTextField(
                  controller: amountTextController,
                  prefixIconData: FontAwesomeIcons.dollarSign,
                  hintText: "Enter The Amount",
                  width: Dimensions.getScreenSize(context).width,
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
              ListTile(
                title: const Text(
                  "Funds",
                  style: defaultMedium,
                ),
                trailing: InfoIconButton(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegulationScreen(),
                    ),
                  ),
                ),
              ),
              const CustomListTile(
                leading: CircleAvatar(
                  radius: 18,
                  backgroundColor: ColorResources.greyColor,
                ),
                title: "Bank A",
                subTitle: "Free Charge",
              ),
              const CustomListTile(
                leading: CircleAvatar(
                  radius: 18,
                  backgroundColor: ColorResources.greyColor,
                ),
                title: "Bank B",
                subTitle: "Free recharge",
              ),
              CustomListTile(
                leading: const CircleAvatar(
                  radius: 18,
                  backgroundColor: ColorResources.greyColor,
                ),
                title: "Bank C",
                subTitle: "Only services payment",
                trailingIcon: InfoIconButton(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DepositFeeScreen(),
                    ),
                  ),
                ),
              ),
              CustomListTile(
                leading: const CircleAvatar(
                  radius: 18,
                  backgroundColor: ColorResources.greyColor,
                ),
                title: "Another Funds",
                subTitle: "ATM cards/ International cards",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DepositWalletScreen(),
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
              SizedBox(
                width: Dimensions.getScreenSize(context).width * .85,
                child: Text(
                  "You need to maintain a minimum balance in your bank account. Please check before making transactions.",
                  textAlign: TextAlign.center,
                  style: defaultRegular.copyWith(
                    fontSize: Dimensions.FONT_SIZE_SMALL + 1,
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
