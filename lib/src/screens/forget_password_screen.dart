import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/dimensions.dart';
import '../utils/images.dart';
import '../utils/styles.dart';
import 'base/custom_dialogs.dart';
import 'base/custom_text_field.dart';
import 'base/rounded_elevated_button.dart';
import 'instruction_retrieve_password.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            "Forgot Password",
            style: defaultMedium.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const InstructionRetrievePasswordScreen(),
                )),
            child: SvgPicture.asset(Images.infoI),
          ),
          // Icon(
          //   Icons.info,
          //   color: ColorResources.greyDark,
          // ),
          const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            const SizedBox(
              width: Dimensions.WIDTH_SIZE_OVER_TOO_LARGE,
              child: Text(
                'Please fill in exactly the information provided. We will send a mail to the email address you registered to regain your password',
                style: defaultRegular,
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            const CustomTextField(
              hintText: "Your ID number",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            const CustomTextField(
              hintText: "Your email",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            SizedBox(
              width: Dimensions.WIDTH_SIZE_OVER_TOO_LARGE,
              child: Text(
                "Suggestions: k******@gmail.com",
                textAlign: TextAlign.center,
                style: defaultRegular.copyWith(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT - 2,
                ),
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            SizedBox(
              width: Dimensions.WIDTH_SIZE_OVER_LARGE - 20,
              child: RoundedElevatedButton(
                textWidget: const Text("SENT"),
                onPressed: () => customDialog(
                  context,
                  title: "Password Reset Email Sent",
                  subtitle:
                      "An email has been sent to your rescue email address. Follow directions in the email to reset your password.",
                  secondButtonText: "OK",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
