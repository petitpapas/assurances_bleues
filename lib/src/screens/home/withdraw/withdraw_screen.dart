import 'package:assurances_bleues/src/screens/home/withdraw/withdraw_confirm_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/color_resources.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/styles.dart';
import '../../base/custom_appbar.dart';
import '../../base/custom_dialogs.dart';
import '../../base/custom_floating_action_button.dart';
import '../../base/custom_list_tile.dart';
import '../../base/custom_text_button.dart';
import '../../base/custom_text_field.dart';
import '../../base/information_list_tile.dart';
import '../../base/rounded_elevated_button.dart';
class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({Key? key}) : super(key: key);

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(
        text: 'NEXT',
        onpressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WithdrawConfirmScreen(),
          ),
        ),
      ),
      appBar: CustomAppBar.build(
        context,
        title: "Withdrawal",
        bottom: TabBar(
          controller: _tabController,
          unselectedLabelColor: ColorResources.lightBlueButton,
          indicatorColor: ColorResources.whiteColor,
          labelColor: Colors.white,
          tabs: const [
            Tab(text: "To The Linked Bank"),
            Tab(text: "At The Place"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const InformationListTile(
                  title: "Balance in the wallet: ",
                  trailingText: "\$ 20,000",
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                CustomTextField(
                  keyboardType: TextInputType.number,
                  width: Dimensions.getScreenSize(context).width,
                  prefixIconData: FontAwesomeIcons.dollarSign,
                  hintText: "Enter The Amount",
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: Dimensions.PADDING_SIZE_DEFAULT,
                    top: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                  ),
                  child: Text(
                    "Withdraw to the linked bank",
                    style: defaultMedium.copyWith(
                      fontSize: Dimensions.FONT_SIZE_DEFAULT,
                    ),
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                CustomListTile(
                  title: "Bank A",
                  subTitle: "Free recharge",
                  trailingIcon: CustomTextButton(
                    onPressed: () {
                      customDialogWithChild(
                        context,
                        backgroundColor: Colors.transparent,
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(
                                Dimensions.PADDING_SIZE_DEFAULT,
                              ),
                              decoration: Styles.boxDecoration.copyWith(
                                color: ColorResources.whiteColor,
                                borderRadius: BorderRadius.circular(
                                  Dimensions.RADIUS_SIZE_DEFAULT + 10,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(
                                      height: Dimensions.PADDING_SIZE_DEFAULT),
                                  Text(
                                    "Choose The Bank",
                                    style: defaultMedium.copyWith(
                                      fontSize:
                                          Dimensions.FONT_SIZE_DEFAULT + 2,
                                    ),
                                  ),
                                  const SizedBox(
                                      height: Dimensions.PADDING_SIZE_DEFAULT),
                                  const CustomListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: ColorResources.greyColor,
                                      radius: 17,
                                    ),
                                    title: "Bank A",
                                    subTitle: "Free recharge",
                                  ),
                                  const CustomListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: ColorResources.greyColor,
                                      radius: 17,
                                    ),
                                    title: "Bank A",
                                    subTitle: "Free recharge",
                                  ),
                                  const CustomListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: ColorResources.greyColor,
                                      radius: 17,
                                    ),
                                    title: "Bank A",
                                    subTitle: "Free recharge",
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: Dimensions.PADDING_SIZE_DEFAULT,
                            ),
                            const SizedBox(
                              width: Dimensions.WIDTH_SIZE_EXTRA_LARGE,
                              height: Dimensions.WIDTH_SIZE_SMALL - 18,
                              child: RoundedElevatedButton(
                                text: "Cancel",
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    text: "Change",
                    textFontSize: Dimensions.FONT_SIZE_SMALL,
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                Center(
                  child: SizedBox(
                    width: Dimensions.getScreenSize(context).width * .8,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: defaultRegular.copyWith(
                          fontSize: 13,
                          color: ColorResources.greyColor,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text:
                                "Free withdrawals to linked banks for the first 3 transactions in the month. Learn more about withdrawals ",
                          ),
                          TextSpan(
                            text: " here",
                            style: TextStyle(
                              color: ColorResources.blueTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                const InformationListTile(
                  title: "Balance in the wallet: ",
                  trailingText: "\$ 20,000",
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                CustomTextField(
                  width: Dimensions.getScreenSize(context).width,
                  prefixIconData: FontAwesomeIcons.dollarSign,
                  hintText: "Enter The Amount",
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: Dimensions.PADDING_SIZE_DEFAULT,
                    top: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                  ),
                  child: Text(
                    "Withdraw to the linked bank",
                    style: defaultMedium.copyWith(
                      fontSize: Dimensions.FONT_SIZE_DEFAULT,
                    ),
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                CustomListTile(
                  title: "Bank A",
                  subTitle: "Free recharge",
                  trailingIcon: CustomTextButton(
                    onPressed: () {},
                    text: "Change",
                    textFontSize: Dimensions.FONT_SIZE_SMALL,
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                Center(
                  child: SizedBox(
                    width: Dimensions.getScreenSize(context).width * .8,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: defaultRegular.copyWith(
                          fontSize: 13,
                          color: ColorResources.greyColor,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text:
                                "Free withdrawals to linked banks for the first 3 transactions in the month. Learn more about withdrawals ",
                          ),
                          TextSpan(
                            text: " here",
                            style: TextStyle(
                              color: ColorResources.blueTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
