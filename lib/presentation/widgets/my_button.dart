import 'package:flutter/material.dart';
import '../../utils/constant.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    this.onTap,
    required this.text,
    this.backGroundColor,
    this.width,
    this.height,
  }) : super(key: key);
  final void Function()? onTap;
  final String text;
  final Color? backGroundColor;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap ?? () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backGroundColor ?? Colors.blue,
        minimumSize: Size(width ?? double.infinity,height ?? 50),
      ),
      child: Text(
        text,
        style: Constant.mediumTextStyle(),
      ),
    );
  }
}
