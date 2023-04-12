import 'package:assurances_bleues/bleues/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../src/screens/base/custom_text_button.dart';
import '../../src/screens/base/rounded_elevated_button.dart';
import '../../src/screens/login/phone_login_screen.dart';
import '../../src/screens/register/register_screen.dart';
import '../../src/utils/dimensions.dart';
import '../../src/utils/images.dart';
import '../../src/utils/styles.dart';

class PresentationScreen extends StatelessWidget {
  PresentationScreen({Key? key}) : super(key: key);

  final List<PageViewModel> listPagesViewModel = <PageViewModel>[
    PageViewModel(
      decoration: const PageDecoration(
        imageFlex: 2
      ),
      titleWidget: Text(
        "L'assurance d'avancer ensemble",
        style: defaultMedium.copyWith(
          fontSize: Dimensions.FONT_SIZE_SMALL + 2,
        ),
      ),
      bodyWidget: SizedBox(
        width: Dimensions.WIDTH_SIZE_OVER_LARGE,
        child: Text(
          "Vos bien sont protégés avec l'assurance Multi Risques et Risques annexes",
          textAlign: TextAlign.center,
          style: defaultRegular.copyWith(
            fontSize: Dimensions.FONT_SIZE_SMALL + 2,
          ),
        ),
      ),
      image: SvgPicture.asset(Images.presentation01),
    ),
    PageViewModel(
      decoration: const PageDecoration(
          imageFlex: 2
      ),
      titleWidget: Text(
        "Intégrité",
        style: defaultMedium.copyWith(
          fontSize: Dimensions.FONT_SIZE_LARGE + 2,
        ),
      ),
      bodyWidget: SizedBox(
        width: Dimensions.WIDTH_SIZE_OVER_LARGE,
        child: Text(
          "Une équipe de professionnels compétents et dynamique à votre service et un savoir faire vieux de 40 ans",
          textAlign: TextAlign.center,
          style: defaultRegular.copyWith(
            fontSize: Dimensions.FONT_SIZE_SMALL + 2,
          ),
        ),
      ),
      image: SvgPicture.asset(Images.presentation01),
    ),
    PageViewModel(
      decoration: const PageDecoration(
          imageFlex: 2,
      ),
      titleWidget: Text(
        "Proximité",
        style: defaultMedium.copyWith(
          fontSize: Dimensions.FONT_SIZE_LARGE + 2,
        ),
      ),
      bodyWidget: SizedBox(
        width: Dimensions.WIDTH_SIZE_OVER_LARGE,
        child: Text(
          "Les Assurances Bleues restent avant tout un assureur proche de ses assurés, aussi bien sur le terrain que dans les services que nous vous proposons",
          textAlign: TextAlign.center,
          style: defaultRegular.copyWith(
            fontSize: Dimensions.FONT_SIZE_SMALL,
          ),
        ),
      ),
      image: SvgPicture.asset(Images.presentation02),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: Dimensions.getScreenSize(context).height * 0.8,
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
                size: const Size.square(10.0),
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

          const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                ),
                text: "PASSER",
              ),
              const SizedBox(
                width: Dimensions.WIDTH_SIZE_LARGE - 10,
                child: RoundedElevatedButton(
                  text: 'INSCRIPTION',
                ),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
        ],
      ),
    );
  }
}
