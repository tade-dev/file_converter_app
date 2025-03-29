import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:file_converter_app/core/resources/styles_x.dart';
import 'package:flutter/material.dart';

class CBTN extends StatelessWidget {
  const CBTN({
    super.key,
    required this.label,
    required this.ontap,
    this.hasBorder = false,
  });

  final bool hasBorder;
  final String label;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 44,
        width: double.infinity,
        decoration: BoxDecoration(
          color:  hasBorder ? null :
          ColorManager.primary,
          borderRadius: BorderRadius.circular(5),
          border: hasBorder ?
          Border.all(
            color: ColorManager.primary
          ) : null
        ),
        child: Center(
          child: Text(
            label,
            style: getMediumStyle(
              color: hasBorder ? ColorManager.primary :
              ColorManager.white,
              fontSize: 16
            ),
          ),
        ),
      ),
    );
  }
}