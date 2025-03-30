import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:file_converter_app/core/resources/styles_x.dart';
import 'package:file_converter_app/ui/widget/btn/c_btn.dart';
import 'package:file_converter_app/ui/widget/custom/close_w.dart';
import 'package:file_converter_app/ui/widget/input/custom_input_w.dart';
import 'package:file_converter_app/ui/widget/input/drop_down_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageConverterV extends StatelessWidget {
  const ImageConverterV({super.key});

  @override
  Widget build(BuildContext context) {

    var screenW = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Container(
        width: screenW,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            CloseW(
              onClose: () {
                Get.back();
              },
            ),
            SizedBox(height: 20,),
            Center(
              child: Text(
                "Image Converter",
                style: getMediumStyle(
                  color: ColorManager.labelBlack,
                  fontSize: 22
                ),
              ),
            ),
            SizedBox(height: 20,),
            CustomInputW(
              label: "Select an output",
              w: DropDownInput(
                onChanged: (v){}, 
                dropdownMenuItems: [],
              ),
            ),
            SizedBox(height: 20,),
            CustomInputW(
              label: "Advanced options",
              w: DropDownInput(
                onChanged: (v){}, 
                dropdownMenuItems: [],
                label: "Resize output image",
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Choose a method if you wish to resize image output.",
              style: getRegularStyle(
                color: ColorManager.labelGrey,
                fontSize: 14
              ),
            ),
            Text(
              "We will replace the transparent areas of your image with this color.",
              style: getRegularStyle(
                color: ColorManager.labelGrey,
                fontSize: 14
              ),
            ),
            SizedBox(height: 20,),
            CBTN(
              label: "Convert", 
              ontap: (){}
            )
          ],
        ),
      ),
    );
  }
}