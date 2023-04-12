import 'package:flutter/material.dart';

import '../utils/dimensions.dart';
import '../utils/styles.dart';

class InstructionRetrievePasswordScreen extends StatelessWidget {
  const InstructionRetrievePasswordScreen({Key? key}) : super(key: key);
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
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            SizedBox(
              width: Dimensions.WIDTH_SIZE_OVER_TOO_LARGE,
              child: Text(
                'Instructions to retrieve the password',
                textAlign: TextAlign.center,
                style: defaultMedium.copyWith(
                  fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                ),
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            SizedBox(
              width: Dimensions.WIDTH_SIZE_OVER_TOO_LARGE,
              child: Text(
                'Please perform the following 3 steps to retrieve your password:',
                style: defaultRegular.copyWith(),
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
            ListTile(
              leading: const Icon(
                Icons.info,
              ),
              title: Text(
                "Please fill in exactly the information provided. We will send a mail to the email address you registered to regain your password",
                style: defaultRegular.copyWith(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT - 1,
                ),
              ),
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            ListTile(
              leading: const Icon(
                Icons.info,
              ),
              title: Text(
                "You check your email and click on the authentication link to receive the OTP password",
                style: defaultRegular.copyWith(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT - 1,
                ),
              ),
              // Use the newly issued OPT password, log in to the application, then go to settings and change your new password
            ),
            const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
            ListTile(
              leading: const Icon(
                Icons.info,
              ),
              title: Text(
                "Use the newly issued OPT password, log in to the application, then go to settings and change your new password",
                style: defaultRegular.copyWith(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT - 1,
                ),
              ),
              // Use the newly issued OPT password, log in to the application, then go to settings and change your new password
            ),
          ],
        ),
      ),
    );
  }
}
