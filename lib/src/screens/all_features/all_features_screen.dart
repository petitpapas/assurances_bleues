import 'package:assurances_bleues/src/screens/all_features/pay_bills/pay_bills_screen.dart';
import 'package:assurances_bleues/src/screens/all_features/screens/entertainment_screen.dart';
import 'package:assurances_bleues/src/screens/all_features/screens/function_screen.dart';
import 'package:assurances_bleues/src/screens/all_features/screens/order_food_online_screen.dart';
import 'package:assurances_bleues/src/screens/all_features/screens/pay_transfer_money_screen.dart';
import 'package:assurances_bleues/src/screens/all_features/screens/shopping_screen.dart';
import 'package:assurances_bleues/src/screens/all_features/screens/software_copyright_screen.dart';
import 'package:assurances_bleues/src/screens/all_features/screens/transport_travel_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/color_resources.dart';
import '../base/custom_appbar.dart';


class AllFeaturesScreen extends StatefulWidget {
  const AllFeaturesScreen({Key? key}) : super(key: key);

  @override
  State<AllFeaturesScreen> createState() => _AllFeaturesScreenState();
}

class _AllFeaturesScreenState extends State<AllFeaturesScreen>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: "Receive/Transfer Money"),
    Tab(text: "Pay Bills"),
    Tab(text: "Entertainment"),
    Tab(text: "Shopping"),
    Tab(text: "Transportation-Travel"),
    Tab(text: "Software Copyright"),
    Tab(text: "Order Food Online"),
    Tab(text: "Function"),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(
        context,
        title: "All Services",
        bottom: TabBar(
          controller: _tabController,
          unselectedLabelColor: ColorResources.lightBlueButton,
          indicatorColor: ColorResources.whiteColor,
          labelColor: Colors.white,
          isScrollable: true,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          PayTransferMoneyScreen(),
          PayBillsScreen(),
          EntertainmentScreen(),
          ShoppingScreen(),
          TransportTravelScreen(),
          SoftwareCopyrightScreen(),
          OrderFoodOnlineScreen(),
          FunctionScreen(),
        ],
      ),
    );
  }
}
