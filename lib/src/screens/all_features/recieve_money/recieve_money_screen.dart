import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/color_resources.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/styles.dart';
import '../../base/custom_appbar.dart';
import '../../base/custom_button.dart';
import '../../base/custom_dialogs.dart';
import '../../base/custom_text_button.dart';
import '../../base/custom_text_field.dart';
import '../../base/qr_code.dart';
import '../../base/rounded_elevated_button.dart';


class RecieveMoneyScreen extends StatelessWidget {
  const RecieveMoneyScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(context, title: "Recieve Moneys"),
      body: Center(
        child: SizedBox(
          height: Dimensions.getScreenSize(context).height * .7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Katharina",
                    style: defaultMedium.copyWith(
                      fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
                    ),
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                  const Text(
                    "(405) 123 - 4567",
                    style: defaultRegular,
                  )
                ],
              ),
              const QrCode(),
              const Text(
                "\$ 1,000",
                style: defaultSemiBold,
              ),
              SizedBox(
                width: 200,
                child: RoundedElevatedButton(
                  text: "ENTER AMOUNT",
                  onPressed: () => customDialogWithChild(
                    context,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                        Text(
                          "Enter the amount you want",
                          style: defaultMedium.copyWith(
                            fontSize: Dimensions.FONT_SIZE_DEFAULT + 2,
                          ),
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                        const CustomTextField(
                          showEnabledBorder: true,
                          borderRadius: 50,
                          prefixIconColor: ColorResources.blackColor,
                          prefixIconData: FontAwesomeIcons.dollarSign,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: Dimensions.PADDING_SIZE_DEFAULT - 2,
                          ),
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            CustomTextButton(
                              text: "CANCEL",
                            ),
                            SizedBox(
                              width: Dimensions.WIDTH_SIZE_DEFAULT,
                              child: RoundedElevatedButton(
                                text: "CONFIRM",
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  CustomTextButton(
                    onPressed: () {},
                    text: "SAVE IMAGE",
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                  const CustomButton(
                    text: "SAVED",
                    width: 200,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
