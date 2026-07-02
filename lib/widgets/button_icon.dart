import 'package:calculator/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonIcon extends StatelessWidget {
  ButtonIcon({
    super.key,
    this.flex,
    this.backgroundColor,
    required this.icon,
    this.colorIcon,
    this.sizeIcon,
  });
  int? flex;
  Color? backgroundColor;
  IconData icon;
  Color? colorIcon;
  double? sizeIcon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: backgroundColor ?? AppColors.greyLight,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
          ),
          onPressed: () {},
          child: Icon(
            icon,
            size: sizeIcon ?? 24,
            color: colorIcon ?? AppColors.blueLight,
          ),
        ),
      ),
    );
  }
}
