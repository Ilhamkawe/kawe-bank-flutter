import 'package:flutter/material.dart';
import 'package:bank_kawe/shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton(
      {super.key,
      required this.text,
      this.width = double.infinity,
      this.height = 50,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: purpleColor,
        borderRadius: BorderRadius.circular(56),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: whiteTextStyle,
        ),
      ),
    );
  }
}
