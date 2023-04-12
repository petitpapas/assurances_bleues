import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utils/color_resources.dart';
import '../../utils/dimensions.dart';
import '../../utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.enabled,
    this.prefixIconData,
    this.validator,
    this.initialValue,
    this.textType,
    this.obscureText,
    this.conformPasswordText,
    this.suffixIcon,
    this.width,
    this.showEnabledBorder = false,
    this.showBorder = false,
    this.keyboardType,
    this.prefixIconColor,
    this.borderRadius,
    this.contentPadding,
    this.hintStyle,
    this.prefixIcon,
    this.cursorColor,
    this.textAlign,
    this.onChanged,
    this.maxTextLenght,
    this.focusNode,
  }) : super(key: key);

  final TextInputType? keyboardType;

  final TextEditingController? controller;
  final String? hintText;
  final bool? enabled;
  final IconData? prefixIconData;
  final String? Function(String?)? validator;
  final String? initialValue;
  final bool? obscureText;
  final String? textType;
  final String? conformPasswordText;
  final Widget? suffixIcon;
  final double? width;
  final bool showEnabledBorder;
  final bool showBorder;
  final double? borderRadius;
  final double? maxTextLenght;
  final Color? prefixIconColor;
  final Color? cursorColor;
  final Icon? prefixIcon;
  final TextStyle? hintStyle;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign? textAlign;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Dimensions.WIDTH_SIZE_OVER_TOO_LARGE,
      child: TextFormField(
        validator: validator,
        controller: controller,
        initialValue: initialValue,
        keyboardType: keyboardType,
        autofocus: false,
        focusNode: focusNode,
        enabled: enabled ?? true,
        obscureText: obscureText ?? false,
        inputFormatters: (maxTextLenght != null)
            ? [
                LengthLimitingTextInputFormatter(maxTextLenght!.toInt()),
              ]
            : [],
        textAlign: textAlign ?? TextAlign.start,
        cursorColor: cursorColor ?? ColorResources.blueColor,
        onChanged: onChanged,
        style: const TextStyle(
          color: ColorResources.whiteColor,
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          fillColor: Colors.white,
          contentPadding: contentPadding,
          border: showBorder
              ? OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(borderRadius ?? 12)),
                  borderSide: const BorderSide(
                    color: ColorResources.blueColor,
                    // width: 5.0,
                  ),
                )
              : InputBorder.none,
          enabledBorder: showEnabledBorder
              ? OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(borderRadius ?? 12)),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    // width: 5.0,
                  ),
                )
              : InputBorder.none,
          hintStyle: hintStyle ??
              defaultThin.copyWith(
                color: ColorResources.greyColor,
              ),
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: (prefixIconData != null || prefixIcon != null)
              ? prefixIcon ??
                  Icon(
                    prefixIconData,
                    size: 17,
                    color: prefixIconColor ?? ColorResources.greyColor,
                  )
              : null,
        ),
      ),
    );
  }
}

class CustomTextField2 extends StatelessWidget {
  const CustomTextField2({
    Key? key,
    this.hintText,
    this.keyboardType,
  }) : super(key: key);
  final String? hintText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        keyboardType: keyboardType,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: Colors.blue,
              // width: 5.0,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: Colors.blue,
              // width: 5.0,
            ),
          ),
          hintStyle: defaultThin.copyWith(
            color: ColorResources.greyColor,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
