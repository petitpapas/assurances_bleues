import 'package:flutter/material.dart';
import 'custom_rounded_button.dart';
import '../../utils/dimensions.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final String text;
  const CustomFloatingActionButton({
    Key? key,
    required this.text,
    this.onpressed,
  }) : super(key: key);
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: Dimensions.PADDING_SIZE_OVER_LARGE),
        CustomRoundedButton(
          buttonText: text,
          width: Dimensions.getScreenSize(context).width * .5,
          onpressed: onpressed ?? () {},
        ),
      ],
    );
  }
}
