import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/color_resources.dart';
import '../../utils/images.dart';
import '../all_features/manager_group_friends/manager_group_friends_screen.dart';
import '../all_features/request_money_transfer/request_money_transfer_screen.dart';
import '../all_features/transfer/transfer_screen.dart';
import '../home/home01_screen.dart';


class ElectricityPayment extends StatelessWidget {
  const ElectricityPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Electricity Payment",
      icon: SvgPicture.asset(Images.electricityPayment),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.greenIconColor,
    );
  }
}

class Receive extends StatelessWidget {
  const Receive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Receive",
      icon: SvgPicture.asset(Images.recieveddollar),

      // iconData: FontAwesomeIcons.qrcode,

      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.blueIconColor,
    );
  }
}

class RequestMoneyTransfer extends StatelessWidget {
  const RequestMoneyTransfer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RequestMoneyTransferScreen(),
        ),
      ),
      text: "Request Money Transfer",
      // iconData: FontAwesomeIcons.moneyCheckDollar,
      icon: SvgPicture.asset(Images.requestMoneyTransfer),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.greenIconColor,
    );
  }
}

class Transfer extends StatelessWidget {
  const Transfer({
    Key? key,
    this.iconWidth,
    this.textSize,
  }) : super(key: key);

  final double? iconWidth;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Transfer",
      fontSize: textSize,
      // iconData: FontAwesomeIcons.getPocket,
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const TransferScreen(),
        ),
      ),
      icon: SvgPicture.asset(
        Images.transfer,
        width: iconWidth,
      ),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.blueIconColor,
    );
  }
}

class Airfare extends StatelessWidget {
  const Airfare({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Airfare",
      iconData: Icons.airplanemode_active_outlined,
      icon: SvgPicture.asset(Images.airfare),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.blueDarkIconColor,
    );
  }
}

class Phone extends StatelessWidget {
  const Phone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Phone",
      // iconData: Icons.phone_android,

      icon: SvgPicture.asset(Images.phone),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.blueDarkIconColor,
    );
  }
}

class WaterPayment extends StatelessWidget {
  const WaterPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Water Payment",
      // iconData: FontAwesomeIcons.water,

      icon: SvgPicture.asset(Images.waterPayment),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.blueIconColor,
    );
  }
}

class AllServices extends StatelessWidget {
  const AllServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "All Services",
      // iconData: FontAwesomeIcons.qrcode,

      icon: SvgPicture.asset(Images.allServices),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.blueDarkIconColor,
    );
  }
}

class Apartment extends StatelessWidget {
  const Apartment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Apartment",
      // iconData: FontAwesomeIcons.building,

      icon: SvgPicture.asset(Images.apartment),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.blueDarkIconColor,
    );
  }
}

class TuitionFree extends StatelessWidget {
  const TuitionFree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IconWithTextCard(
      text: "Tuition Free",
      iconData: FontAwesomeIcons.book,

      // icon: SvgPicture.asset(Images.Deposit),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.greenIconColor,
    );
  }
}

// Tuition Free

class ConsumerLoans extends StatelessWidget {
  const ConsumerLoans({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Consumer Loans",
      // iconData: FontAwesomeIcons.moneyCheckDollar,

      icon: SvgPicture.asset(Images.consumerLoans),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.blueDarkIconColor,
    );
  }
}

class BuyMovieTickets extends StatelessWidget {
  const BuyMovieTickets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Buy Movie Tickets",
      // iconData: FontAwesomeIcons.getPocket,

      icon: SvgPicture.asset(Images.buyMovieTickets),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.redIconColor,
    );
  }
}

class Games extends StatelessWidget {
  const Games({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Games",
      // iconData: FontAwesomeIcons.gamepad,

      icon: SvgPicture.asset(Images.Deposit),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.yellowIconColor,
    );
  }
}

class PayBills extends StatelessWidget {
  const PayBills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Pay Bills",
      // iconData: FontAwesomeIcons.qrcode,

      icon: SvgPicture.asset(Images.payBills),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.blueIconColor,
    );
  }
}

class GiveGifts extends StatelessWidget {
  const GiveGifts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Give Gifts",
      // iconData: FontAwesomeIcons.moneyCheckDollar,

      icon: SvgPicture.asset(Images.giveGifts),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.redIconColor,
    );
  }
}

class Antivirus extends StatelessWidget {
  const Antivirus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IconWithTextCard(
      text: "Antivirus",
      iconData: FontAwesomeIcons.virus,
      // icon: SvgPicture.asset(Images.Deposit),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.blueDarkIconColor,
    );
  }
}

// Order Food Online
class OrderFoodOnline extends StatelessWidget {
  const OrderFoodOnline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Order Food Online",
      // iconData: FontAwesomeIcons.getPocket,

      icon: SvgPicture.asset(Images.orderFoodOnline),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.yellowIconColor,
    );
  }
}

class ManageGroupFriends extends StatelessWidget {
  const ManageGroupFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Manage Group Of Friends",
      // iconData: FontAwesomeIcons.qrcode,
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ManagerGroupFriendsScreen(),
        ),
      ),

      icon: SvgPicture.asset(Images.manageGroupOfFriends),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.redIconColor,
    );
  }
}

class TrainTickets extends StatelessWidget {
  const TrainTickets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Train Tickets",
      // iconData: FontAwesomeIcons.train,

      icon: SvgPicture.asset(Images.trainTickets),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.greenIconColor,
    );
  }
}

class LinkAccount extends StatelessWidget {
  const LinkAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Link Account",
      // iconData: FontAwesomeIcons.link,

      icon: SvgPicture.asset(Images.linkAccount),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.greenIconColor,
    );
  }
}

class Credit extends StatelessWidget {
  const Credit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Credit",
      // iconData: FontAwesomeIcons.creditCard,

      icon: SvgPicture.asset(Images.credit),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.blueIconColor,
    );
  }
}

class Internet extends StatelessWidget {
  const Internet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Internet",
      // iconData: Icons.accessible_forward_outlined,

      icon: SvgPicture.asset(Images.internet),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.yellowIconColor,
    );
  }
}

class HotelBooking extends StatelessWidget {
  const HotelBooking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Hotel Booking",
      // iconData: FontAwesomeIcons.hotel,

      icon: SvgPicture.asset(Images.hotelBooking),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.redIconColor,
    );
  }
}

class OtherBills extends StatelessWidget {
  const OtherBills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Other Bills",
      // iconData: Icons.attach_money_sharp,

      icon: SvgPicture.asset(Images.otherBills),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.greenIconColor,
    );
  }
}

class ShareFriends extends StatelessWidget {
  const ShareFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Share Friends",
      // iconData: FontAwesomeIcons.share,

      icon: SvgPicture.asset(Images.shareFriends),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.greenIconColor,
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({
    Key? key,
    this.iconWidth,
    this.textSize,
  }) : super(key: key);

  final double? iconWidth;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Setting",
      fontSize: textSize,

      // iconData: Icons.settings_outlined,

      icon: SvgPicture.asset(
        Images.setting,
        width: iconWidth,
      ),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.greenIconColor,
    );
  }
}

class MyWallet extends StatelessWidget {
  const MyWallet({
    Key? key,
    this.iconWidth,
    this.textSize,
  }) : super(key: key);

  final double? iconWidth;
  final double? textSize;
  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "My Wallet",
      fontSize: textSize,
      // iconData: Icons.settings_outlined,
      icon: SvgPicture.asset(
        Images.folder,
        width: iconWidth,
      ),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.greenIconColor,
    );
  }
}

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({
    Key? key,
    this.iconWidth,
    this.textSize,
  }) : super(key: key);

  final double? iconWidth;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Transaction History",

      fontSize: textSize,
      // iconData: Icons.settings_outlined,

      icon: SvgPicture.asset(
        Images.transactionHistoryIcon,
        width: iconWidth,
      ),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.redIconColor,
    );
  }
}

class Cable extends StatelessWidget {
  const Cable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconWithTextCard(
      text: "Cable",
      // iconData: FontAwesomeIcons.cartFlatbed,

      icon: SvgPicture.asset(Images.cable),
      donotShowShadow: true,
      textColor: ColorResources.blackColor,
      iconColor: ColorResources.yellowIconColor,
    );
  }
}
