import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../base/custom_dialogs.dart';
import '../base/rounded_elevated_button.dart';
import 'fingerprint_login_screen.dart';

class PhoneLoginScreen extends StatelessWidget {
  const PhoneLoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Dimensions.getScreenSize(context).height * .25),
              Text(
                'Enter your phone number',
                style: defaultMedium.copyWith(
                  fontSize: Dimensions.FONT_SIZE_LARGE,
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              SizedBox(
                width: Dimensions.WIDTH_SIZE_OVER_TOO_LARGE,
                child: Text(
                  "Use the phone number to register or login NPAY",
                  textAlign: TextAlign.center,
                  style: defaultRegular.copyWith(
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
              InkWell(
                onTap: () => showDialog(
                  context: context,
                  builder: (_) => const AlertDialog(
                    title: Text('Dialog Title'),
                    content: Text('This is my content'),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(Images.uS),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    ),
                    const SizedBox(width: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                    const Text(
                      "+1",
                      style: defaultMedium,
                    ),

                    const SizedBox(width: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                    SizedBox(
                      width: Dimensions.WIDTH_SIZE_LARGE,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "(405) 123 - 4567",
                          hintStyle: defaultRegular.copyWith(
                            color: ColorResources.greyColor,
                          ),
                        ),
                      ),
                    ),
                    // Text(
                    //   "(405) 123 - 4567",
                    //   style: defaultRegular.copyWith(
                    //     color: ColorResources.greyColor,
                    //   ),
                    // ),

                    // (405) 123 - 4567
                  ],
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
              SizedBox(
                width: 180,
                child: RoundedElevatedButton(
                  onPressed: () => phoneNumberLoginDialog(
                    context,
                    title: "Login with phone number:",
                    mainText: "(405) 123 - 4567",
                    description:
                        "We will send the authentication code to the phone number you entered. Do you want continue?",
                    firstButtonText: "CLOSE",
                    onPressedFirstButton: () => Navigator.pop(context),
                    secondButtonText: "Next",
                    onPressedSecondButton: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FingerprintLoginScreen(),
                      ),
                    ),
                  ),
                  text: "Next",
                  backgroundColor: ColorResources.disableButton,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
