import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.txtColor,
    this.bkColor,
    this.borderRadius,
    this.fontSize,
  });

  final String text;
  final Color? txtColor, bkColor;
  final BorderRadius? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: bkColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            )),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
              color: txtColor, fontWeight: FontWeight.w900, fontSize: fontSize),
        ),
      ),
    );
  }
}
