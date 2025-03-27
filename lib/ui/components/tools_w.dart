import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:file_converter_app/core/resources/styles_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ToolsW extends StatelessWidget {
  const ToolsW({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: ColorManager.greenAlt,
          radius: 16,
          child: SvgPicture.asset(
            icon,
            height: 24,
            width: 24,
          ),
        ),
        SizedBox(height: 15,),
        Text(
          title,
          style: getRegularStyle(
            color: ColorManager.labelBlack,
            fontSize: 12,
          )
        )
      ],
    );
  }
}