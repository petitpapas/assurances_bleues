import 'package:flutter/material.dart';

import '../utils/color_resources.dart';
import '../utils/dimensions.dart';
import '../utils/styles.dart';
import 'base/custom_text_field.dart';
import 'base/rounded_elevated_button.dart';

class EnterInformationScreen extends StatelessWidget {
  const EnterInformationScreen({Key? key}) : super(key: key);
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
                  'Information',
                  style: defaultMedium.copyWith(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                SizedBox(
                  width: Dimensions.WIDTH_SIZE_OVER_TOO_LARGE,
                  child: Text(
                    "This information is used to authenticate and protect your account better",
                    textAlign: TextAlign.center,
                    style: defaultRegular.copyWith(
                      height: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
                const SizedBox(
                  width: 300,
                  child: CustomTextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    hintText: "Full name",
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
                const SizedBox(
                  width: 300,
                  child: CustomTextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    hintText: 'Email',
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
                    text: "Done",
                    backgroundColor: ColorResources.disableButton,
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
