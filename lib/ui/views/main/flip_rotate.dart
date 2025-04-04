import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:file_converter_app/core/resources/styles_x.dart';
import 'package:file_converter_app/ui/widget/btn/c_btn.dart';
import 'package:file_converter_app/ui/widget/custom/close_w.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlipRotateV extends StatelessWidget {
  const FlipRotateV({super.key});

  @override
  Widget build(BuildContext context) {

    var screenW = MediaQuery.sizeOf(context).width;

    return Container(
      width: screenW,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          CloseW(
            onClose: () {
              Get.back();
            },
          ),
          Text(
            "Flip & Rotate",
            style: getBoldStyle(
              color: ColorManager.labelBlack,
              fontSize: 22
            ),
          ),
          CBTN(
            label: "Download", 
            ontap: (){}
          )
        ],
      ),
    );
  }

}