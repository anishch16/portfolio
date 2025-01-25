import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key, this.onPressed, this.backgroundColor, this.foregroundColor, this.width, this.height, required this.title, this.titleColor});

  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? width;
  final double? height;
  final String title;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Get.theme.colorScheme.primary,
        foregroundColor: foregroundColor ?? Get.theme.colorScheme.onPrimary,
        minimumSize: Size(width ?? 160, height ?? 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(64),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: titleColor ?? Get.theme.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
