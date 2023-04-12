import 'package:flutter/material.dart';

import '../utils/color_resources.dart';
import '../utils/dimensions.dart';
import '../utils/styles.dart';
import 'base/custom_dialogs.dart';
import 'base/custom_text_field.dart';
import 'base/rounded_elevated_button.dart';
import 'change_password_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final phoneTextEditingController = TextEditingController();
  bool isChecked = false;
  bool showButton = false;
  bool showTextFieldBorder = false;

  @override
  void dispose() {
    super.dispose();
    phoneTextEditingController.dispose();
  }

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
                  'Verification codes OTP',
                  style: defaultMedium.copyWith(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                SizedBox(
                  width: Dimensions.WIDTH_SIZE_OVER_TOO_LARGE,
                  child: Text(
                    "A verification codes has been sent to (405) 123 - 456",
                    textAlign: TextAlign.center,
                    style: defaultRegular.copyWith(
                      height: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
                SizedBox(
                  width: 300,
                  child: CustomTextField(
                    onChanged: (value) {
                      setState(() {
                        if (value.isNotEmpty) {
                          showButton = true;
                          showTextFieldBorder = true;
                        } else {
                          showButton = false;
                          showTextFieldBorder = false;
                        }
                      });
                    },
                    maxTextLenght: 6,
                    controller: phoneTextEditingController,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    showBorder: showTextFieldBorder,
                    hintText: "- - - - -",
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
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
                          builder: (context) => const ChangePasswordScreen(),
                        )),
                    text: "Next",
                    backgroundColor: showButton
                        ? ColorResources.blueColor
                        : ColorResources.disableButton,
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
                InkWell(
                  onTap: () => customDialog(
                    context,
                    title: "Have you not receive verification codes OTP",
                    subtitle:
                        "NPAY will call you on (405) 123 - 456 to read the OPT code",
                    firstButtonText: "CLOSE",
                    secondButtonText: "CALL",
                    onPressedFirstButton: () => Navigator.pop(context),
                    secondButtonWidth: 100,
                  ),
                  child: Text(
                    "Send Again OTP (59s)",
                    style: defaultRegular.copyWith(
                      color: ColorResources.blueColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                InkWell(
                  onTap: () => customDialog(
                    context,
                    titleWidget: Text(
                      "Are you sure you want to sign up with another phone number?",
                      style: defaultMedium.copyWith(
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    firstButtonText: "CLOSE",
                    onPressedFirstButton: () => Navigator.pop(context),
                    secondButtonText: "SURE",
                    dialogHeight: 150,
                  ),
                  child: Text(
                    "Change Phone Number",
                    style: defaultRegular.copyWith(
                      color: ColorResources.blueColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
