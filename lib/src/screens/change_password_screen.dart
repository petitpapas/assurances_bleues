import 'package:flutter/material.dart';

import '../utils/color_resources.dart';
import '../utils/dimensions.dart';
import '../utils/styles.dart';
import 'base/custom_text_field.dart';
import 'base/rounded_elevated_button.dart';
import 'enter_information_screen.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    height: Dimensions.getScreenSize(context).height * .25),
                Text(
                  'Create a password',
                  style: defaultMedium.copyWith(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                SizedBox(
                  width: Dimensions.WIDTH_SIZE_OVER_TOO_LARGE,
                  child: Text(
                    "Create a password with 6 numbers to safeguard your NPAY",
                    textAlign: TextAlign.center,
                    style: defaultRegular.copyWith(
                      height: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
                const CustomTextField(
                  obscureText: true,
                  hintText: 'Enter password',
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
                const CustomTextField(
                  obscureText: true,
                  hintText: "Re-enter the password",
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
                SizedBox(
                  width: 250,
                  child: Text(
                    "*Password does not match please type again!",
                    textAlign: TextAlign.center,
                    style: defaultRegular.copyWith(
                      color: ColorResources.errorColor,
                    ),
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
                SizedBox(
                  width: 180,
                  child: RoundedElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EnterInformationScreen(),
                        )),
                    text: "Enter",
                    backgroundColor: ColorResources.blueColor,
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
