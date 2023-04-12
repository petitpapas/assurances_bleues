import 'package:flutter/material.dart';
import '../../utils/color_resources.dart';
import 'logo.dart';

class QrCode extends StatelessWidget {
  const QrCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/qr_code.png",
          width: 150,
        ),
        Positioned.fill(
          child: Center(
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: ColorResources.whiteColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Center(
                child: Logo(
                  fontSize: 5,
                  widthBetweenText: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
