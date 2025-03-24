import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:file_converter_app/core/resources/styles_x.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.h,
    this.w,
    required this.title,
  });

  final double? h;
  final Widget? w;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: ColorManager.bgnColor,
      centerTitle: false,
      title: Text(
        title,
        style: getMediumStyle(
          color: ColorManager.labelBlack,
          fontSize: 18,
        ),
      ),
      actions: [w ?? SizedBox.shrink()],
    );
  }
}