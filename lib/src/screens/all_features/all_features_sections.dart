import 'package:assurances_bleues/src/screens/all_features/recieve_money/recieve_money_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/dimensions.dart';
import '../../utils/styles.dart';
import '../base/all_features_cards.dart';

class PaybillsSection extends StatelessWidget {
  const PaybillsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: Dimensions.PADDING_SIZE_DEFAULT,
            top: Dimensions.PADDING_SIZE_EXTRA_LARGE,
          ),
          child: Text(
            "Pay bills",
            style: defaultMedium.copyWith(
              fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
            ),
          ),
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ElectricityPayment(),
            WaterPayment(),
            Airfare(),
          ],
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Internet(),
            ConsumerLoans(),
            Phone(),
          ],
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
        const Apartment(),
      ],
    );
  }
}

class ReceiveTransferMoneySection extends StatelessWidget {
  const ReceiveTransferMoneySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RecieveMoneyScreen(),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: Dimensions.PADDING_SIZE_DEFAULT,
              top: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            ),
            child: Text(
              "Receive/Transfer Money",
              style: defaultMedium.copyWith(
                fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
              ),
            ),
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Transfer(),
              RequestMoneyTransfer(),
              Receive(),
            ],
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
        ],
      ),
    );
  }
}

class EntertainmentSection extends StatelessWidget {
  const EntertainmentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: Dimensions.PADDING_SIZE_DEFAULT,
            top: Dimensions.PADDING_SIZE_EXTRA_LARGE,
          ),
          child: Text(
            "Entertainment",
            style: defaultMedium.copyWith(
              fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
            ),
          ),
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            BuyMovieTickets(),
            SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
            Games(),
          ],
        ),
      ],
    );
  }
}

class ShoppingSection extends StatelessWidget {
  const ShoppingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: Dimensions.PADDING_SIZE_DEFAULT,
            top: Dimensions.PADDING_SIZE_EXTRA_LARGE,
          ),
          child: Text(
            "Shopping",
            style: defaultMedium.copyWith(
              fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
            ),
          ),
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
        const GiveGifts(),
      ],
    );
  }
}

class TransportationTravelSection extends StatelessWidget {
  const TransportationTravelSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: Dimensions.PADDING_SIZE_DEFAULT,
            top: Dimensions.PADDING_SIZE_EXTRA_LARGE,
          ),
          child: Text(
            "Transportation-Travel",
            style: defaultMedium.copyWith(
              fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
            ),
          ),
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Airfare(),
            HotelBooking(),
            TrainTickets(),
          ],
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
      ],
    );
  }
}

class FunctionSection extends StatelessWidget {
  const FunctionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: Dimensions.PADDING_SIZE_DEFAULT,
            top: Dimensions.PADDING_SIZE_EXTRA_LARGE,
          ),
          child: Text(
            "Function",
            style: defaultMedium.copyWith(
              fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
            ),
          ),
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            LinkAccount(),
            ShareFriends(),
            Setting(),
          ],
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
      ],
    );
  }
}

class SoftwareCopyrightSection extends StatelessWidget {
  const SoftwareCopyrightSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: Dimensions.PADDING_SIZE_DEFAULT,
            top: Dimensions.PADDING_SIZE_EXTRA_LARGE,
          ),
          child: Text(
            "Software Copyright",
            style: defaultMedium.copyWith(
              fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
            ),
          ),
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
        const Antivirus(),
      ],
    );
  }
}

class OrderFoodOnlineSection extends StatelessWidget {
  const OrderFoodOnlineSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: Dimensions.PADDING_SIZE_DEFAULT,
            top: Dimensions.PADDING_SIZE_EXTRA_LARGE,
          ),
          child: Text(
            "Order Food Online",
            style: defaultMedium.copyWith(
              fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
            ),
          ),
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
        const OrderFoodOnline(),
      ],
    );
  }
}
