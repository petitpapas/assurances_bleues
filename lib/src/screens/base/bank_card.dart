import 'package:flutter/material.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/styles.dart';


class BankCard extends StatelessWidget {
  const BankCard({
    Key? key,
    required this.text,
    this.topWidget,
    this.onTap,
  }) : super(key: key);

  final String text;
  final Widget? topWidget;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
        decoration: Styles.boxDecoration,
        child: Column(
          children: [
            topWidget ??
                const CircleAvatar(
                  backgroundColor: ColorResources.greyColor,
                ),
            const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
            Text(
              text,
            )
          ],
        ),
      ),
    );
  }
}
