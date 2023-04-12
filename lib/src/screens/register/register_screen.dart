import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../base/custom_dialogs.dart';
import '../base/custom_text_field.dart';
import '../base/rounded_elevated_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final phoneTextEditingController = TextEditingController();
  bool isChecked = false;
  bool showButton = false;

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
              GestureDetector(
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
                        const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                        const Icon(
                          Icons.arrow_downward,
                          size: 17,
                        )
                      ],
                    ),
                    const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),

                    // SvgPicture.asset(Images.uS),

                    const SizedBox(width: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                    const Text(
                      "+1",
                      style: defaultMedium,
                    ),

                    const SizedBox(width: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                    SizedBox(
                      width: Dimensions.WIDTH_SIZE_LARGE,
                      child: CustomTextField(
                        onChanged: (value) => setState(() {
                          if (value.length > 5) {
                            showButton = true;
                          } else {
                            showButton = false;
                          }
                        }),
                        controller: phoneTextEditingController,
                        hintText: "(405) 123 - 4567",
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    //                     onChanged: (text) {
                    //   print('First text field: $text');
                    // },
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
                  onPressed: () => alreadyAccoundDialog(context),
                  text: "Next",
                  backgroundColor: (isChecked && showButton)
                      ? ColorResources.blueColor
                      : ColorResources.disableButton,
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_OVER_TOO_LARGE),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () => setState(() {
                      isChecked = !isChecked;
                    }),
                    child: Icon(
                      isChecked ? Icons.check_circle : Icons.circle_outlined,
                      color: ColorResources.blueColor,
                      size: 22,
                    ),
                  ),
                  const SizedBox(width: Dimensions.PADDING_SIZE_DEFAULT),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      style: const TextStyle(
                        color: Colors.grey,
                        height: 1.4,
                      ),
                      children: <TextSpan>[
                        const TextSpan(text: 'I have read and agree to '),
                        TextSpan(
                          text: '\nthe terms of use ',
                          style: defaultRegular.copyWith(
                            decoration: TextDecoration.underline,
                            color: ColorResources.blueColor,
                          ),
                        ),
                        const TextSpan(text: 'of NPAY. '),

                        // of NPAY.
                      ],
                    ),
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
