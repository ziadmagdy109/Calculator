import 'package:calculator/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CalcalculateButton extends StatelessWidget {
  CalcalculateButton({
    super.key,
    this.flex,
    this.backgroundColor,
    required this.textButton,
    this.colorText,
    this.sizeText,
  });
  int? flex;
  Color? backgroundColor;
  String textButton;
  Color? colorText;
  double? sizeText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: backgroundColor ?? AppColors.greyDark,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
          ),
          onPressed: () {},
          child: Text(
            textButton,
            style: TextStyle(
              fontSize: sizeText ?? 32,
              color: colorText ?? AppColors.blueLight,
            ),
          ),
        ),
      ),
    );
  }
}
