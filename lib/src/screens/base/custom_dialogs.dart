import '../home/withdraw/withdraw_sucess.dart';
import '../transaction/transcation_sucess.dart';
import '../verification_screen.dart';
import 'rounded_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import 'custom_text_button.dart';

Future<dynamic> alreadyAccoundDialog(BuildContext context) {
  return customDialog(
    context,
    titleWidget: SizedBox(
      width: 200,
      child: Text(
        "Your phone number (405) 123 - 456 already has an account on this app.",
        style: defaultMedium.copyWith(
          height: 1.4,
          fontSize: Dimensions.FONT_SIZE_DEFAULT,
        ),
        textAlign: TextAlign.center,
      ),
    ),
    subtitle: "Do you want to log in?",
    firstButtonText: "Back",
    secondButtonText: "Log in",
    secondButtonWidth: 100,
    onPressedSecondButton: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const VerificationScreen(),
        )),
  );

  // return showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Dialog(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(
  //             20.0,
  //           ),
  //         ), //this right here
  //         child: SizedBox(
  //           height: 200,
  //           child: Padding(
  //             padding: const EdgeInsets.all(12.0),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               children: [
  //                 const Text(
  //                   "Your phone number (405) 123 - 456 already has an account on this app.",
  //                   style: defaultMedium,
  //                   textAlign: TextAlign.center,
  //                 ),
  //                 const SizedBox(
  //                   height: Dimensions.PADDING_SIZE_DEFAULT,
  //                 ),
  //                 Text(
  //                   "Do you want to log in?",
  //                   style: defaultRegular.copyWith(
  //                       color: ColorResources.greyColor),
  //                   textAlign: TextAlign.center,
  //                 ),
  //                 const SizedBox(
  //                   height: Dimensions.PADDING_SIZE_DEFAULT,
  //                 ),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                   children: [
  //                     CustomTextButton(
  //                       onPressed: () => Navigator.pop(context),
  //                       text: "BACK",
  //                     ),
  //                     RoundedElevatedButton(
  //                       onPressed: () => Navigator.push(
  //                           context,
  //                           MaterialPageRoute(
  //                             builder: (context) => const VerificationScreen(),
  //                           )),
  //                       text: 'LOGIN IN',
  //                     ),
  //                   ],
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //       );
  //     });
}

Future<dynamic> codeNotRecievedDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ), //this right here
          child: SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Have you not receive verification codes OTP",
                    style: defaultMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: Dimensions.PADDING_SIZE_DEFAULT,
                  ),
                  Text(
                    "NPAY will call you on (405) 123 - 456 to read the OPT code",
                    style: defaultRegular.copyWith(
                        color: ColorResources.greyColor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: Dimensions.PADDING_SIZE_DEFAULT,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomTextButton(
                        onPressed: () => Navigator.pop(context),
                        text: "CLOSE",
                      ),
                      RoundedElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VerificationScreen(),
                            )),
                        text: 'CALL',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}

Future<dynamic> customDialog(
  BuildContext context, {
  String? title,
  Widget? titleWidget,
  String? subtitle,
  void Function()? onPressedFirstButton,
  String? firstButtonText,
  void Function()? onPressedSecondButton,
  String? secondButtonText,
  double? dialogHeight,
  double? secondButtonWidth,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ), //this right here
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
          child: SizedBox(
            height: dialogHeight ?? 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                (title != null || titleWidget != null)
                    ? titleWidget ??
                        Text(
                          title!,
                          style: defaultMedium,
                          textAlign: TextAlign.center,
                        )
                    : const SizedBox(),
                (title != null || titleWidget != null)
                    ? const SizedBox(
                        height: Dimensions.PADDING_SIZE_LARGE,
                      )
                    : const SizedBox(),
                subtitle != null
                    ? Text(
                        subtitle,
                        style: defaultRegular.copyWith(
                            color: ColorResources.greyColor),
                        textAlign: TextAlign.center,
                      )
                    : const SizedBox(),
                subtitle != null
                    ? const SizedBox(
                        // height: Dimensions.PADDING_SIZE_DEFAULT,
                        height: Dimensions.PADDING_SIZE_LARGE,
                      )
                    : const SizedBox(),
                Row(
                  mainAxisAlignment:
                      (firstButtonText != null && secondButtonText != null)
                          ? MainAxisAlignment.spaceEvenly
                          : MainAxisAlignment.center,
                  children: [
                    firstButtonText != null
                        ? CustomTextButton(
                            onPressed: onPressedFirstButton ?? () {},
                            text: firstButtonText,
                          )
                        : const SizedBox(),
                    secondButtonText != null
                        ? SizedBox(
                            width: secondButtonWidth ?? 100,
                            // width: secondButtonWidth,
                            child: RoundedElevatedButton(
                              onPressed: onPressedSecondButton ?? () {},
                              text: secondButtonText,
                            ),
                          )
                        : const SizedBox(),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}

Future<dynamic> customDialogWithChild(
  BuildContext context, {
  required Widget child,
  AlignmentGeometry? alignment,
  Color? backgroundColor,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        alignment: alignment,
        elevation: 0,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ), //this right here
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: child,
        ),
      );
    },
  );
}

Future<dynamic> showFingerPrintDialog(BuildContext context) {
  return customDialogWithIcon(
    context,
    null,
    title: "Fingerprint for NPAY",
    subtitle: "Use fingerprint to unlock NPAY",
    secondButtonText: "Cancel",
    height: Dimensions.WIDTH_SIZE_OVER_TOO_LARGE,
    icon: SvgPicture.asset(Images.fingerprint),
    onPressedSecondButton: () => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TransactionSuccessScreen(),
      ),
    ),
  );
}

Future<dynamic> showFaceDialog(BuildContext context) {
  return customDialogWithIcon(
    context,
    null,
    title: "Face ID for NPAY",
    subtitle: "Use Face ID to unlock NPAY",
    secondButtonText: "Cancel",
    height: Dimensions.WIDTH_SIZE_OVER_TOO_LARGE,
    icon: SvgPicture.asset(Images.faceID),
    onPressedSecondButton: () => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const WithdrawSuccessScreen(),
      ),
    ),
  );
}

Future<dynamic> customDialogWithIcon(
  BuildContext context,
  IconData? iconData, {
  String? title,
  String? subtitle,
  void Function()? onPressedFirstButton,
  String? firstButtonText,
  void Function()? onPressedSecondButton,
  String? secondButtonText,
  double? height,
  Widget? icon,
}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ), //this right here
          child: SizedBox(
            height: height ?? 250,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  icon ??
                      Icon(
                        iconData,
                        color: ColorResources.blueColor,
                        size: Dimensions.WIDTH_SIZE_SMALL,
                      ),
                  const SizedBox(
                    height: Dimensions.PADDING_SIZE_LARGE,
                  ),
                  title != null
                      ? Text(
                          title,
                          style: defaultMedium,
                          textAlign: TextAlign.center,
                        )
                      : const SizedBox(),
                  title != null
                      ? const SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        )
                      : const SizedBox(),
                  subtitle != null
                      ? Text(
                          subtitle,
                          style: defaultRegular.copyWith(
                              color: ColorResources.greyColor),
                          textAlign: TextAlign.center,
                        )
                      : const SizedBox(),
                  subtitle != null
                      ? const SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        )
                      : const SizedBox(),
                  const SizedBox(height: Dimensions.PADDING_SIZE_OVER_LARGE),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      firstButtonText != null
                          ? CustomTextButton(
                              onPressed: onPressedFirstButton ?? () {},
                              text: firstButtonText,
                            )
                          : const SizedBox(),
                      const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                      secondButtonText != null
                          ? SizedBox(
                              width: firstButtonText == null ? 200 : null,
                              child: RoundedElevatedButton(
                                onPressed: onPressedSecondButton ?? () {},
                                text: secondButtonText,
                              ),
                            )
                          : const SizedBox(),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}

Future<dynamic> phoneNumberLoginDialog(
  BuildContext context, {
  String? title,
  String? mainText,
  String? description,
  void Function()? onPressedFirstButton,
  String? firstButtonText,
  void Function()? onPressedSecondButton,
  String? secondButtonText,
}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ), //this right here
          child: SizedBox(
            height: Dimensions.WIDTH_SIZE_OVER_LARGE,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  title != null
                      ? Text(
                          title,
                          style: defaultRegular.copyWith(
                              color: ColorResources.greyColor),
                          textAlign: TextAlign.center,
                        )
                      : const SizedBox(),
                  title != null
                      ? const SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        )
                      : const SizedBox(),
                  mainText != null
                      ? Text(
                          mainText,
                          style: defaultMedium,
                          textAlign: TextAlign.center,
                        )
                      : const SizedBox(),
                  mainText != null
                      ? const SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        )
                      : const SizedBox(),
                  description != null
                      ? Text(
                          description,
                          style: defaultRegular.copyWith(
                              color: ColorResources.greyColor),
                          textAlign: TextAlign.center,
                        )
                      : const SizedBox(),
                  description != null
                      ? const SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        )
                      : const SizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      firstButtonText != null
                          ? CustomTextButton(
                              onPressed: onPressedFirstButton ?? () {},
                              text: firstButtonText,
                            )
                          : const SizedBox(),
                      secondButtonText != null
                          ? SizedBox(
                              width: 100,
                              child: RoundedElevatedButton(
                                onPressed: onPressedSecondButton ?? () {},
                                text: secondButtonText,
                              ),
                            )
                          : const SizedBox(),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}
