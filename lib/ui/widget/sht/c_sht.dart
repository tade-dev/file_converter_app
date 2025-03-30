import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CSHT {

  showBottomSheet(
    {
     required Widget child,
     bool enableDrag = false,
     bool isDismissible = false,
    }
  ) {

    var context = Get.context;

    showModalBottomSheet(
      context: context!, 
      builder: (context) => child,
      enableDrag: enableDrag,
      isDismissible: isDismissible,
      isScrollControlled: true,
      backgroundColor: ColorManager.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        )
      ),
    );
  }

}