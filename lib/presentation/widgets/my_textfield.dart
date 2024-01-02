import 'package:flutter/material.dart';
import 'package:invoice/core/constant/constant.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.hintText,
    this.validator,
    this.validatorString,
    this.suffixIcon,
    this.obSecureText = false,
    this.obscuringCharacter = '•',
    this.isEnabled,
  }) : super(key: key);
  final TextEditingController controller;
  final String labelText;
  final String? hintText;
  final String? validatorString;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool obSecureText;
  final String obscuringCharacter;
  final bool? isEnabled;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(Constant.textFieldRadius),
    borderSide: const BorderSide(color: Colors.black),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obSecureText,
      obscuringCharacter:widget.obscuringCharacter,
      enabled: widget.isEnabled,
      decoration: InputDecoration(
        suffixIcon:widget.suffixIcon,
        labelText: widget.labelText,
        labelStyle: Constant.mediumTextStyle().copyWith(color: Colors.black),
        hintStyle: Constant.mediumTextStyle()
            .copyWith(color: Colors.black.withOpacity(0.3)),
        hintText: widget.hintText ?? widget.labelText,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        disabledBorder: outlineInputBorder,
      ),
      validator: widget.validator ??
              (val) {
            if (val.isEmptyOrNull) {
              return widget.validatorString ?? '';
            }
            return null;
          },
    );
  }
}
