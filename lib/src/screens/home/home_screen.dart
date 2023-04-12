import 'package:assurances_bleues/src/screens/home/payment_code/payment_code_screen.dart';
import 'package:assurances_bleues/src/screens/home/withdraw/withdraw_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../all_features/all_features_screen.dart';
import '../base/all_features_cards.dart';
import '../base/custom_dialogs.dart';
import '../base/custom_list_tile.dart';
import '../base/custom_text_button.dart';
import '../base/custom_text_field.dart';
import '../deposit/deposit_screen.dart';
import '../login/phone_login_screen.dart';
import '../notifications/notifications_screen.dart';
import 'home01_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _selectedIndex = 0;
  bool showSearch = false;
  bool showSearchingScreen = false;
  late FocusNode focusNode;

  final searchTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    focusNode.addListener(_onFocusChange);
    searchTextController.addListener(() {
      if (searchTextController.text.isNotEmpty) {
        setState(() {
          showSearchingScreen = true;
        });
      } else {
        setState(() {
          showSearchingScreen = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.removeListener(_onFocusChange);
    focusNode.dispose();
    searchTextController.dispose();
  }

  void _onItemTapped(int index) {}

  void _onFocusChange() {
    if (focusNode.hasFocus) {
      showSearch = true;
    } else {
      showSearch = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.colorPrimary,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const SearchScreen(),
                //   ),
                // );
                // SearchScreen
              },
              icon: const Icon(
                Icons.search,
                color: ColorResources.whiteColor,
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: 100,
              child: CustomTextField(
                // focusNode: ,
                hintText: "Search",
                controller: searchTextController,
                focusNode: focusNode,
                cursorColor: ColorResources.whiteColor,
                hintStyle: defaultMedium.copyWith(
                  color: ColorResources.whiteColor,
                ),
              ),
            ),
            // Center(
            //   child: Text(
            //     "Search",
            //     style: defaultMedium.copyWith(
            //       color: ColorResources.whiteColor,
            //     ),
            //   ),
            // ),
          ],
        ),
        actions: showSearch
            ? [
                CustomTextButton(
                  text: "Close",
                  color: ColorResources.whiteColor,
                  textStyle: defaultMedium,
                  onPressed: () {
                    focusNode.unfocus();
                    searchTextController.clear();
                    setState(() {
                      showSearch = false;
                    });
                  },
                ),
              ]
            : [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationScreen(),
                    ),
                  ),
                  child: SvgPicture.asset(Images.notificationAppbar),
                ),
                const SizedBox(width: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
                InkWell(
                  onTap: () => customDialog(
                    context,
                    title: "Would you like to log out of this account?",
                    firstButtonText: "CLOSE",
                    secondButtonText: "SURE",
                    onPressedSecondButton: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PhoneLoginScreen(),
                      ),
                    ),
                    dialogHeight: 110,
                  ),
                  child: SvgPicture.asset(
                    Images.logout,
                    color: ColorResources.whiteColor,
                  ),
                  // const Icon(
                  //   Icons.logout,
                  //   color: ColorResources.whiteColor,
                  // ),
                ),
                const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
              ],
      ),
      body: showSearch
          ? showSearchingScreen
              ? Padding(
                  padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          child: CustomListTile(
                            leading: SvgPicture.asset(
                              Images.transfer,
                            ),
                            title: "Transfer",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          child: CustomListTile(
                            leading: SvgPicture.asset(
                              Images.requestMoneyTransfer,
                            ),
                            title: "Request Money Transfer",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          child: CustomListTile(
                            leading: SvgPicture.asset(
                              Images.giveGifts,
                            ),
                            title: "Give Gift",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          child: CustomListTile(
                            leading: SvgPicture.asset(
                              Images.buyMovieTickets,
                            ),
                            title: "Buy Movie Tickets",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          child: CustomListTile(
                            leading: SvgPicture.asset(
                              Images.waterPayment,
                            ),
                            title: "Water Payment",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          child: CustomListTile(
                            leading: SvgPicture.asset(
                              Images.transactionHistoryIcon,
                            ),
                            title: "Transaction History",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          child: CustomListTile(
                            leading: SvgPicture.asset(
                              Images.myWallet,
                            ),
                            title: "My Wallet",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          child: CustomListTile(
                            leading: SvgPicture.asset(
                              Images.electricityPayment,
                            ),
                            title: "Electricity Payament",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          child: CustomListTile(
                            leading: SvgPicture.asset(
                              Images.otherBills,
                            ),
                            title: "Other Bills",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                          ),
                          child: CustomListTile(
                            leading: SvgPicture.asset(
                              Images.linkAccount,
                            ),
                            title: "Link Account",
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Offer",
                          textAlign: TextAlign.start,
                          style: defaultRegular.copyWith(
                            fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
                          ),
                        ),
                        const SizedBox(
                            height: Dimensions.PADDING_SIZE_OVER_LARGE),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Transfer(),
                            RequestMoneyTransfer(),
                            ManageGroupFriends(),
                          ],
                        ),
                        const SizedBox(
                            height: Dimensions.PADDING_SIZE_OVER_LARGE),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            OrderFoodOnline(),
                            GiveGifts(),
                            PayBills(),
                          ],
                        ),
                        const SizedBox(
                            height: Dimensions.PADDING_SIZE_OVER_LARGE),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            BuyMovieTickets(),
                            ConsumerLoans(),
                            WaterPayment(),
                          ],
                        ),
                        const SizedBox(
                            height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: Dimensions.PADDING_SIZE_DEFAULT,
                          ),
                          child: Text(
                            "Fast Access",
                            textAlign: TextAlign.start,
                            style: defaultRegular.copyWith(
                              fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
                            ),
                          ),
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                        SizedBox(
                          height: 100,
                          width: Dimensions.getScreenSize(context).width * 8,
                          // width: 300,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              TransactionHistory(),
                              Setting(),
                              MyWallet(),
                              Transfer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 35,
                        color: ColorResources.blueColor,
                      ),
                      Center(
                        child: Container(
                          height: 100,
                          width: Dimensions.getScreenSize(context).width * .9,
                          padding: const EdgeInsets.symmetric(
                              vertical:
                                  Dimensions.PADDING_SIZE_EXTRA_TOO_SMALL),
                          decoration: Styles.boxDecoration.copyWith(
                            color: ColorResources.whiteColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(22),
                              topRight: Radius.circular(22),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconWithTextCard(
                                text: "Deposit",
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DepositScreen(),
                                  ),
                                ),
                                // iconData: FontAwesomeIcons.getPocket,
                                icon: SvgPicture.asset(Images.Deposit),
                                donotShowShadow: true,
                                textColor: ColorResources.blackColor,
                                iconColor: ColorResources.blueIconColor,
                                cardWidth: 80,
                                fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL,
                                iconSize: 30,
                              ),
                              IconWithTextCard(
                                text: "Withdrawal",
                                icon: SvgPicture.asset(Images.withdrawal),

                                // iconData: FontAwesomeIcons.moneyCheckDollar,
                                donotShowShadow: true,
                                textColor: ColorResources.blackColor,
                                iconColor: ColorResources.greenIconColor,
                                cardWidth: 80,
                                fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL,
                                iconSize: 30,
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const WithdrawScreen(),
                                  ),
                                ),
                              ),
                              IconWithTextCard(
                                text: "Pay code",
                                icon: SvgPicture.asset(Images.payCode),
                                donotShowShadow: true,
                                textColor: ColorResources.blackColor,
                                iconColor: ColorResources.redIconColor,
                                cardWidth: 80,
                                fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL,
                                iconSize: 30,
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const PaymentCodeScreen(),
                                  ),
                                ),
                              ),
                              IconWithTextCard(
                                text: "Scan code",
                                icon: SvgPicture.asset(Images.scanCode),
                                // iconData: FontAwesomeIcons.getPocket,
                                donotShowShadow: true,
                                textColor: ColorResources.blackColor,
                                iconColor: ColorResources.blueDarkIconColor,
                                cardWidth: 80,
                                fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL,
                                iconSize: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.PADDING_SIZE_SMALL,
                    ),
                    child: ListTile(
                      title: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Balance in the wallet",
                            style: defaultMedium.copyWith(
                              color: ColorResources.greyColor,
                              fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
                            ),
                          ),
                          const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                          const Icon(
                            FontAwesomeIcons.solidEye,
                            size: 17,
                            color: ColorResources.blueDarkIconColor,
                          )
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "\$ 2,000",
                            style: defaultSemiBold.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Transfer(),
                      RequestMoneyTransfer(),
                      ManageGroupFriends(),
                    ],
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconWithTextCard(
                        text: "Order Food Online",
                        icon: SvgPicture.asset(Images.orderFoodOnline),

                        // iconData: FontAwesomeIcons.getPocket,
                        donotShowShadow: true,
                        textColor: ColorResources.blackColor,
                        iconColor: ColorResources.yellowIconColor,
                      ),
                      IconWithTextCard(
                        text: "Give Gifts",
                        icon: SvgPicture.asset(Images.giveGifts),

                        // iconData: FontAwesomeIcons.moneyCheckDollar,
                        donotShowShadow: true,
                        textColor: ColorResources.blackColor,
                        iconColor: ColorResources.redIconColor,
                      ),
                      IconWithTextCard(
                        text: "Pay Bills",
                        icon: SvgPicture.asset(Images.payBills),

                        // iconData: FontAwesomeIcons.qrcode,
                        donotShowShadow: true,
                        textColor: ColorResources.blackColor,
                        iconColor: ColorResources.blueIconColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconWithTextCard(
                        text: "Buy Movie Tickets",
                        icon: SvgPicture.asset(Images.buyMovieTickets),

                        // iconData: FontAwesomeIcons.getPocket,
                        donotShowShadow: true,
                        textColor: ColorResources.blackColor,
                        iconColor: ColorResources.redIconColor,
                      ),
                      IconWithTextCard(
                        text: "Consumer Loans",
                        icon: SvgPicture.asset(Images.consumerLoans),

                        // iconData: FontAwesomeIcons.moneyCheckDollar,
                        donotShowShadow: true,
                        textColor: ColorResources.blackColor,
                        iconColor: ColorResources.blueDarkIconColor,
                      ),
                      IconWithTextCard(
                        text: "All Services",
                        icon: SvgPicture.asset(Images.allServices),
                        // iconData: FontAwesomeIcons.qrcode,
                        donotShowShadow: true,
                        textColor: ColorResources.blackColor,
                        iconColor: ColorResources.blueDarkIconColor,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AllFeaturesScreen(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
                  SizedBox(
                    width: Dimensions.getScreenSize(context).width * .9,
                    height: 80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 240,
                          height: 80,
                          decoration: Styles.boxDecoration.copyWith(
                            color: ColorResources.greyColor,
                          ),
                          child: Center(
                            child: Text(
                              "SALE OFF 20%",
                              style: defaultExtraBold.copyWith(
                                color: ColorResources.whiteColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                        Container(
                          width: 240,
                          height: 80,
                          decoration: Styles.boxDecoration.copyWith(
                            color: ColorResources.greyColor,
                          ),
                          child: Center(
                            child: Text(
                              "SALE OFF 20%",
                              style: defaultExtraBold.copyWith(
                                color: ColorResources.whiteColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                        Container(
                          width: 240,
                          height: 80,
                          decoration: Styles.boxDecoration.copyWith(
                            color: ColorResources.greyColor,
                          ),
                          child: Center(
                            child: Text(
                              "SALE OFF 20%",
                              style: defaultExtraBold.copyWith(
                                color: ColorResources.whiteColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                      ],
                    ),
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                ],
              ),
            ),
      bottomNavigationBar: showSearch
          ? null
          : BottomNavigationBar(
              unselectedItemColor: ColorResources.greyColor,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(Images.logocircular),
                  //  Icon(
                  //   Icons.home,
                  //   size: 35,
                  //   // color: ColorResources.greyColor,
                  // ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(Images.hot),

                  // icon: Icon(
                  //   Icons.hot_tub,

                  //   size: 35,
                  //   // color: ColorResources.greyColor,
                  // ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(Images.transactionhistory),

                  // icon: Icon(
                  //   Icons.history,

                  //   size: 35,
                  //   // color: ColorResources.greyColor,
                  // ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(Images.folder),

                  // icon: Icon(
                  //   Icons.folder,

                  //   size: 35,
                  //   // color: ColorResources.greyColor,
                  // ),
                  label: '',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: ColorResources.blueColor,
              onTap: _onItemTapped,
            ),
    );
  }
}
