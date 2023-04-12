import 'package:flutter/material.dart';import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/styles.dart';
class Home01Screen extends StatelessWidget {
  const Home01Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.search,
                color: ColorResources.blueColor,
              ),
            ),
            const SizedBox(width: 8),
            Center(
              child: Text(
                "Search",
                style: defaultMedium.copyWith(),
              ),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: ColorResources.blueColor,
          ),
          SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
          Icon(
            Icons.offline_bolt,
            color: ColorResources.blueColor,
          ),
          SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
        children: [
          ListTile(
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
                Container(
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    color: ColorResources.blueColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
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
          const SizedBox(width: Dimensions.PADDING_SIZE_OVER_LARGE),
          SizedBox(
            width: Dimensions.getScreenSize(context).width * 0.9,
            height: 110,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: const [
                IconWithTextCard(
                  text: "Order Food Online",
                  iconData: Icons.star,
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                IconWithTextCard(
                  text: "Order Food Online",
                  iconData: Icons.circle,
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                IconWithTextCard(
                  text: "Order Food Online",
                  iconData: Icons.rectangle_rounded,
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                IconWithTextCard(
                  text: "Order Food Online",
                  iconData: Icons.star,
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
              ],
            ),
          ),
          const SizedBox(width: Dimensions.PADDING_SIZE_OVER_LARGE),
          SizedBox(
            width: Dimensions.getScreenSize(context).width * 0.9,
            height: 110,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: const [
                IconWithTextCard(
                  text: "Order Food Online",
                  iconData: Icons.star,
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                IconWithTextCard(
                  text: "Order Food Online",
                  iconData: Icons.circle,
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                IconWithTextCard(
                  text: "Order Food Online",
                  iconData: Icons.rectangle_rounded,
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                IconWithTextCard(
                  text: "Order Food Online",
                  iconData: Icons.star,
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
              ],
            ),
          ),
          const SizedBox(width: Dimensions.PADDING_SIZE_OVER_LARGE),
          SizedBox(
            width: Dimensions.getScreenSize(context).width * 0.9,
            height: 110,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: const [
                IconWithTextCard(
                  text: "Order Food Online",
                  iconData: Icons.star,
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                IconWithTextCard(
                  text: "Order Food Online",
                  iconData: Icons.circle,
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                IconWithTextCard(
                  text: "Order Food Online",
                  iconData: Icons.rectangle_rounded,
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                IconWithTextCard(
                  text: "Order Food Online",
                  iconData: Icons.star,
                ),
                SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
              ],
            ),
          ),
          const SizedBox(width: Dimensions.PADDING_SIZE_OVER_LARGE),
          SizedBox(
            width: Dimensions.getScreenSize(context).width * 0.9,
            height: 200,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: Styles.boxDecorationWithShadow,
                ),
                const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                Container(
                  width: 200,
                  height: 200,
                  decoration: Styles.boxDecorationWithShadow,
                ),
                const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                Container(
                  width: 200,
                  height: 200,
                  decoration: Styles.boxDecorationWithShadow,
                ),
                const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
              ],
            ),
          ),
          Container(
            decoration: Styles.boxDecorationWithShadow,
            padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.star,
                  color: ColorResources.blueColor,
                ),
                Icon(
                  Icons.circle,
                  color: ColorResources.blueColor,
                ),
                Icon(
                  Icons.square_rounded,
                  color: ColorResources.blueColor,
                ),
                Icon(
                  Icons.star,
                  color: ColorResources.blueColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class IconWithTextCard extends StatelessWidget {
  const IconWithTextCard({
    Key? key,
    required this.text,
    this.iconData,
    this.donotShowShadow = false,
    this.textColor,
    this.iconColor,
    this.cardWidth,
    this.fontSize,
    this.iconSize,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final IconData? iconData;
  final Widget? icon;
  final bool donotShowShadow;
  final Color? textColor;
  final Color? iconColor;
  final double? cardWidth;
  final double? fontSize;
  final double? iconSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: cardWidth ?? 100,
        decoration: donotShowShadow
            ? Styles.boxDecoration.copyWith(
                color: ColorResources.whiteColor,
              )
            : Styles.boxDecorationWithShadow.copyWith(
                color: ColorResources.whiteColor,
              ),
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_SMALL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (icon != null)
                ? icon!
                : (iconData != null)
                    ? Icon(
                        iconData,
                        color: iconColor ?? ColorResources.blueColor,
                        size: iconSize ?? 30,
                      )
                    : const SizedBox(),
            const SizedBox(
              height: Dimensions.PADDING_SIZE_SMALL,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: defaultRegular.copyWith(
                color: textColor ?? ColorResources.greyColor,
                fontSize: fontSize ?? Dimensions.FONT_SIZE_SMALL,
              ),
            )
          ],
        ),
      ),
    );
  }
}
