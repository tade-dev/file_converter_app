import 'package:dotted_border/dotted_border.dart';
import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:file_converter_app/core/resources/styles_x.dart';
import 'package:file_converter_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageUploadW extends StatelessWidget {
  const ImageUploadW({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    var screenW = MediaQuery.sizeOf(context).width;
    var screenH = MediaQuery.sizeOf(context).height;
    return Container(
      width: screenW,
      height: screenH * 0.30,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: DottedBorder(
        strokeWidth: 1,
        dashPattern: [6,6],
        radius: Radius.circular(10),
        borderType: BorderType.RRect,
        color: ColorManager.green,
        child: Container(
          width: screenW,
          decoration: BoxDecoration(
            color: ColorManager.greenAlt,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.svg.folder
              ),
              SizedBox(height: 20,),
              Text.rich(
                TextSpan(
                  text: "Click here to ",
                  style: getMediumStyle(
                    color: ColorManager.labelBlack,
                    fontSize: 15
                  ),
                  children: [
                    TextSpan(
                      text: "upload ",
                      style: getMediumStyle(
                        color: ColorManager.green,
                        fontSize: 15
                      )
                    ),
                    TextSpan(
                      text: "image",
                      style: getMediumStyle(
                        color: ColorManager.labelBlack,
                        fontSize: 15
                      ),
                    ),
                  ]
                ),
              ),
              SizedBox(height: 8,),
              Text(
                "Supports: pdf, Max file size 90MB",
                style: getRegularStyle(
                  color: ColorManager.labelBlackAlt,
                  fontSize: 12
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}