import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:file_converter_app/core/resources/styles_x.dart';
import 'package:file_converter_app/ui/widget/c_btn.dart';
import 'package:file_converter_app/ui/widget/close_w.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageConverterV extends StatelessWidget {
  const ImageConverterV({super.key});

  @override
  Widget build(BuildContext context) {

    var screenW = MediaQuery.sizeOf(context).width;

    return Container(
      width: screenW,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CloseW(
            onClose: () {
              Get.back();
            },
          ),
          Text(
            "Image Converter",
            style: getMediumStyle(
              color: ColorManager.labelBlack,
              fontSize: 22
            ),
          ),
          CBTN(
            label: "Convert", 
            ontap: (){}
          )
        ],
      ),
    );
  }
}