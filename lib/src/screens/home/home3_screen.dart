import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/styles.dart';
import '../base/all_features_cards.dart';

class Home3Screen extends StatefulWidget {
  const Home3Screen({Key? key}) : super(key: key);

  @override
  State<Home3Screen> createState() => _Home3ScreenState();
}

class _Home3ScreenState extends State<Home3Screen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.blueColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.search,
                color: ColorResources.whiteColor,
              ),
            ),
            const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    FontAwesomeIcons.getPocket,
                    color: ColorResources.whiteColor,
                    size: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.monetization_on,
                    color: ColorResources.whiteColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.bathroom,
                    color: ColorResources.whiteColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.scanner,
                    color: ColorResources.whiteColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.bathroom,
                    color: ColorResources.whiteColor,
                  ),
                ),
              ],
            )
          ],
        ),
        actions: const [
          // SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
          Icon(
            Icons.offline_bolt,
            color: ColorResources.whiteColor,
          ),
          SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
        ],
      ),
      body: SingleChildScrollView(
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
                    height: 60,
                    width: Dimensions.getScreenSize(context).width * .9,
                    padding: const EdgeInsets.symmetric(
                        vertical: Dimensions.PADDING_SIZE_EXTRA_TOO_SMALL),
                    decoration: Styles.boxDecorationWithShadow.copyWith(
                      color: ColorResources.whiteColor,
                      borderRadius: const BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Padding(
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
                            const SizedBox(
                                width: Dimensions.PADDING_SIZE_SMALL),
                            const Icon(
                              FontAwesomeIcons.solidEye,
                              size: 17,
                              color: ColorResources.blueDarkIconColor,
                            )
                          ],
                        ),
                        trailing: Text(
                          "\$ *****",
                          style: defaultSemiBold.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
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
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ElectricityPayment(),
                WaterPayment(),
                Airfare(),
              ],
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Cable(),
                ShareFriends(),
                OtherBills(),
              ],
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                HotelBooking(),
                Internet(),
                Credit(),
              ],
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                LinkAccount(),
                TrainTickets(),
                AllServices(),
              ],
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: ColorResources.greyColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
              // color: ColorResources.greyColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.hot_tub,

              size: 35,
              // color: ColorResources.greyColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,

              size: 35,
              // color: ColorResources.greyColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.folder,

              size: 35,
              // color: ColorResources.greyColor,
            ),
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
