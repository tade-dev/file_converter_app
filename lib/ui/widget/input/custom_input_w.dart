import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:file_converter_app/core/resources/styles_x.dart';
import 'package:flutter/material.dart';

class CustomInputW extends StatelessWidget {
  const CustomInputW({
    super.key,
    required this.label,
    required this.w,
  });

  final String? label;
  final Widget? w;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            label ?? "",
            style: getSemiBoldStyle(
              color: ColorManager.labelBlack, 
              fontSize: 14
            ),
          ),
        ),
        w ?? SizedBox.shrink()
      ],
    );
  }
}