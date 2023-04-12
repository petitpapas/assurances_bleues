import 'package:flutter/material.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/styles.dart';
import '../base/custom_dialogs.dart';
import '../base/custom_text_field.dart';
import '../base/rounded_elevated_button.dart';
import '../forget_password_screen.dart';
import 'face_login_screen.dart';

class FingerprintLoginScreen extends StatelessWidget {
  const FingerprintLoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: Dimensions.getScreenSize(context).height * .25),
                Text(
                  'Welcome!',
                  style: defaultMedium.copyWith(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                SizedBox(
                  width: Dimensions.WIDTH_SIZE_OVER_TOO_LARGE,
                  child: Text(
                    "Katharina (405) 123 - 4567",
                    textAlign: TextAlign.center,
                    style: defaultRegular.copyWith(
                      height: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
                const CustomTextField(
                  hintText: "Enter your password",
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
                SizedBox(
                  width: 220,
                  child: RoundedElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FaceLoginScreen(),
                      ),
                    ),
                    text: "LOGIN",
                    backgroundColor: ColorResources.disableButton,
                  ),
                ),
                SizedBox(
                  width: 220,
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
                    ),
                    textWidget: InkWell(
                      onTap: () => showFingerPrintDialog(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.fingerprint,
                          ),
                          const SizedBox(
                              width: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                          Text(
                            "Sign in with Fingerprint",
                            style: defaultRegular.copyWith(
                              color: Colors.white,
                              fontSize: Dimensions.FONT_SIZE_SMALL,
                            ),
                          )
                        ],
                      ),
                    ),
                    backgroundColor: ColorResources.blueColor,
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                SizedBox(
                  width: Dimensions.WIDTH_SIZE_EXTRA_LARGE,
                  child: Text(
                    "*Incorrect pass word, please type again",
                    textAlign: TextAlign.center,
                    style: defaultRegular.copyWith(
                      color: ColorResources.errorColor,
                    ),
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgetPasswordScreen(),
                      )),
                  child: Text(
                    "Forgot Password",
                    style: defaultRegular.copyWith(
                      decoration: TextDecoration.underline,
                      color: ColorResources.blueColor,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => customDialog(context,
                      title: "Are you sure you want to sign out?",
                      firstButtonText: "CLOSE",
                      secondButtonText: "SURE"),
                  child: Text(
                    "Sign Out",
                    style: defaultRegular.copyWith(
                      decoration: TextDecoration.underline,
                      color: ColorResources.blueColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
