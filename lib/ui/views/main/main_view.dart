import 'package:file_converter_app/core/enums/enums.dart';
import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:file_converter_app/core/resources/styles_x.dart';
import 'package:file_converter_app/ui/components/image_upload_w.dart';
import 'package:file_converter_app/ui/components/upload_w.dart';
import 'package:file_converter_app/ui/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    var screenW = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(title: "File Converter")
      ),
      body: Container(
        width: screenW,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageUploadW(),
            Visibility(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text(
                    "Uploaded files",
                    style: getMediumStyle(
                      color: ColorManager.labelBlack,
                      fontSize: 15
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, index)=> UploadW(
                onCancel: (){
                  
                }, 
                onRetry: (){}, 
                status: (index == 0) ?
                UploadStatusType.loading :
                (index == 1) ?
                UploadStatusType.completed :
                UploadStatusType.failed
              ), 
              separatorBuilder: (_, index) => Divider(), 
              itemCount: 3
            ),
            Column(
              children: [
                SizedBox(height: 20,),
                Text(
                  "Uploaded files",
                  style: getMediumStyle(
                    color: ColorManager.labelBlack,
                    fontSize: 15
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}