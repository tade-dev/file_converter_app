import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

// ignore: must_be_immutable
class CloseW extends StatelessWidget {
  CloseW({
    super.key,
    this.onClose
  });

  Function()? onClose;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      trailing: GestureDetector(
        onTap: onClose ?? () {
          Get.back();
        },
        child: CircleAvatar(
          radius: 16,
          backgroundColor: ColorManager.greyAlt,
          child: Icon(
            Icons.close
          ),
        ),
      ),
    );
  }
}