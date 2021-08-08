import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../app_theme.dart';
import 'underlined_text_input_widget.dart';

class TextInput extends StatelessWidget {
  final String fieldName;
  final String hintText;
  final bool isObscure;
  final bool hasSuffix;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final String? errorText;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final VoidCallback? onObscurePressed;

  const TextInput({
    required this.hintText,
    required this.fieldName,
    Key? key,
    this.focusNode,
    this.onChanged,
    this.controller,
    this.textInputAction,
    this.errorText,
    this.isObscure = false,
    this.hasSuffix = false,
    this.onObscurePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        UnderlinedTextInputWidget(
            fieldName: fieldName,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              obscureText: isObscure,
              focusNode: focusNode,
              textAlign: TextAlign.center,
              textInputAction: textInputAction,
              decoration: InputDecoration(
                isCollapsed: true,
                isDense: true,
                hintMaxLines: 1,
                hintStyle: const TextStyle(
                  color: greyTextColor,
                  fontSize: 12,
                  height: 2,
                ),
                errorText: errorText,
                errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent, width: 5)),
                errorMaxLines: 1,
                errorStyle: const TextStyle(
                    fontSize: 11, height: 0.4, color: tomatoRedColor),
                hintText: hintText,
                border: InputBorder.none,
              ),
              controller: controller,
            )),
        if (hasSuffix)
          Positioned(
            right: 40,
            top: 0,
            bottom: 0,
            child: IconButton(
              onPressed: () => onObscurePressed!(),
              icon: isObscure
                  ? const Icon(
                      Icons.visibility_off,
                      size: 14,
                      color: orangeColor,
                    )
                  : const Icon(
                      Icons.visibility,
                      size: 14,
                      color: orangeColor,
                    ),
            ),
          )
        else
          const SizedBox(),
      ],
    );
  }
}
