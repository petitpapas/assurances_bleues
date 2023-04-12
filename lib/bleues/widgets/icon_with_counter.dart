import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconWithCounter extends StatelessWidget {
  const IconWithCounter({Key? key, required this.svgSrc,
    this.numOfitem = 0, required this.press,
    this.iconColor, this.boxColor, this.size = 46}) : super(key: key);

  final String svgSrc;
  final int numOfitem;
  final GestureTapCallback press;
  final Color? iconColor;
  final Color? boxColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(7),
            height: size,
            width: size,
            decoration: BoxDecoration(
              color: boxColor ?? const Color(0xFF979797).withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc, color: iconColor,),
          ),
          if (numOfitem != 0)
            Positioned(
              top: -1,
              right: 0,
              child: Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfitem",
                    style: const TextStyle(
                      fontSize: 10,
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}