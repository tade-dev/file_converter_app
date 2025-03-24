import 'package:file_converter_app/core/enums/enums.dart';
import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:file_converter_app/core/resources/styles_x.dart';
import 'package:file_converter_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class UploadW extends StatelessWidget {
  const UploadW({
    super.key,
    required this.onCancel,
    required this.onRetry,
    required this.status,
  });

  final Function() onCancel;
  final Function() onRetry;
  final UploadStatusType status;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(
        Assets.svg.folderUpload
      ),
      title: Text(
        "Patient#9272 biling.png",
        style: getMediumStyle(
          color: ColorManager.labelBlack,
          fontSize: 15,
        ),
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: status == UploadStatusType.loading ?
            StepProgressIndicator(
              totalSteps: 100,
              currentStep: 60,
              roundedEdges: Radius.circular(20),
              size: 2,
              selectedColor: ColorManager.loading,
              unselectedColor: ColorManager.loadingAlt,
              padding: 0,
            ) :
            status == UploadStatusType.completed ?
            Text.rich(
              TextSpan(
                text: "12MB   ",
                style: getMediumStyle(
                  color: ColorManager.labelBlackAlt,
                  fontSize: 12
                ),
                children: [
                  TextSpan(
                    text: "Success",
                    style: getMediumStyle(
                      color: ColorManager.green,
                      fontSize: 12
                    )
                  ),
                ]
              ),
            ) : 
            Text(
              "Failed to upload",
              style: getMediumStyle(
                color: ColorManager.danger,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(width: 15,),
          Row(
            children: [
              status != UploadStatusType.loading ?
              buildCloseW(
                tap: onRetry,
                status: status
              ):
              Text(
                "62%",
                style: getRegularStyle(
                  color: ColorManager.labelBlack,
                  fontSize: 12,
                ),
              ),
              SizedBox(width: 15,),
              buildCloseW(
                tap: onCancel,
                status: UploadStatusType.loading
              )
            ],
          )
        ],
      ),
    );
  }

  buildCloseW({
    required Function() tap, 
    required UploadStatusType status,
  }) {
    return GestureDetector(
      onTap: tap,
      child: CircleAvatar(
        radius: 12,
        backgroundColor: status == UploadStatusType.failed ?
        ColorManager.danger :
        status == UploadStatusType.completed ?
        ColorManager.green :
        ColorManager.loadingAlt,
        child: Icon(
          status == UploadStatusType.failed ?
          Icons.refresh:
          status == UploadStatusType.completed ?
          Icons.check:
          Icons.close,
          size: 14,
          color: status == UploadStatusType.loading ?
          ColorManager.labelBlack :
          Colors.white,
        ),
      ),
    );
  }

}