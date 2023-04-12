import 'package:assurances_bleues/src/screens/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../utils/dimensions.dart';
import '../utils/images.dart';
import '../utils/styles.dart';
import 'base/custom_text_button.dart';
import 'base/rounded_elevated_button.dart';
import 'login/phone_login_screen.dart';


class WalkthroughsScreen extends StatelessWidget {
  final List<PageViewModel> listPagesViewModel = <PageViewModel>[
    PageViewModel(
      titleWidget: Text(
        "Absolute Safety",
        style: defaultMedium.copyWith(
          fontSize: Dimensions.FONT_SIZE_LARGE + 2,
        ),
      ),
      bodyWidget: SizedBox(
        width: Dimensions.WIDTH_SIZE_OVER_LARGE,
        child: Text(
          "Multi-storey security, international standard",
          textAlign: TextAlign.center,
          style: defaultRegular.copyWith(
            fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
          ),
        ),
      ),
      image: SvgPicture.asset(Images.onboarding1),
    ),
    PageViewModel(
      titleWidget: Text(
        "Various Services",
        style: defaultMedium.copyWith(
          fontSize: Dimensions.FONT_SIZE_LARGE + 2,
        ),
      ),
      bodyWidget: SizedBox(
        width: Dimensions.WIDTH_SIZE_OVER_LARGE,
        child: Text(
          "Consumer Loan Payment, pay bills and many other services",
          textAlign: TextAlign.center,
          style: defaultRegular.copyWith(
            fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
          ),
        ),
      ),
      image: SvgPicture.asset(Images.onboarding2),
    ),
    PageViewModel(
      titleWidget: Text(
        "Easy Deposit and Withdrawal",
        style: defaultMedium.copyWith(
          fontSize: Dimensions.FONT_SIZE_LARGE + 2,
        ),
      ),
      bodyWidget: SizedBox(
        width: Dimensions.WIDTH_SIZE_OVER_LARGE,
        child: Text(
          "Diversify recharge and withdraw money, free recharge with bank account",
          textAlign: TextAlign.center,
          style: defaultRegular.copyWith(
            fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
          ),
        ),
      ),
      image: SvgPicture.asset(Images.onboarding3),
    ),
    PageViewModel(
      titleWidget: Text(
        "Quick Money Transfer",
        style: defaultMedium.copyWith(
          fontSize: Dimensions.FONT_SIZE_LARGE + 2,
        ),
      ),
      bodyWidget: SizedBox(
        width: Dimensions.WIDTH_SIZE_OVER_LARGE,
        child: Text(
          "Send and receive money quickly just need a phone number",
          textAlign: TextAlign.center,
          style: defaultRegular.copyWith(
            fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
          ),
        ),
      ),
      image: SvgPicture.asset(Images.onboarding4),
    ),
    PageViewModel(
      titleWidget: Text(
        "Attractive Deals",
        style: defaultMedium.copyWith(
          fontSize: Dimensions.FONT_SIZE_LARGE + 2,
        ),
      ),
      bodyWidget: SizedBox(
        width: Dimensions.WIDTH_SIZE_OVER_LARGE,
        child: Text(
          "High discount, great promotion",
          textAlign: TextAlign.center,
          style: defaultRegular.copyWith(
            fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
          ),
        ),
      ),
      image: SvgPicture.asset(Images.onboarding5),
    ),
  ];

  WalkthroughsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: Dimensions.getScreenSize(context).height * 0.7,
            child: IntroductionScreen(
              pages: listPagesViewModel,
              onDone: () {
                // When done button is press
              },
              onSkip: () {
                // You can also override onSkip callback
              },
              skip: const SizedBox(),
              next: const SizedBox(),
              dotsContainerDecorator: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              done: const SizedBox(),
              dotsDecorator: DotsDecorator(
                size: const Size.square(8.0),
                activeSize: const Size(18.0, 18.0),
                // activeColor: theme.accentColor,
                color: Colors.black26,
                spacing: const EdgeInsets.symmetric(horizontal: 6.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                ),
                text: "REGISTER",
              ),
              SizedBox(
                width: Dimensions.WIDTH_SIZE_LARGE - 10,
                child: RoundedElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PhoneLoginScreen(),
                    ),
                  ),
                  text: 'SIGN IN',
                ),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
        ],
      ),
    );
  }
}
