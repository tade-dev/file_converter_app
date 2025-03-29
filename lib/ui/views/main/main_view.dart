import 'package:file_converter_app/core/enums/enums.dart';
import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:file_converter_app/core/resources/styles_x.dart';
import 'package:file_converter_app/gen/assets.gen.dart';
import 'package:file_converter_app/ui/components/image_upload_w.dart';
import 'package:file_converter_app/ui/components/tools_w.dart';
import 'package:file_converter_app/ui/components/upload_w.dart';
import 'package:file_converter_app/ui/views/main/image_converter_v.dart';
import 'package:file_converter_app/ui/widget/c_sht.dart';
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
        child: CustomAppBar(title: "Convertio")
      ),
      body: Container(
        width: screenW,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
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
                padding: EdgeInsets.zero,
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
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tools",
                    style: getMediumStyle(
                      color: ColorManager.labelBlack,
                      fontSize: 15
                    ),
                  ),
                  SizedBox(height: 20,),
                  GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.3,
                    children: [
                      ToolsW(
                        title: "Image Cropper", 
                        icon: Assets.icon.crop,
                        ontap: () {
                          
                        },
                      ),
                      ToolsW(
                        title: "Image Resizer", 
                        icon: Assets.icon.expand,
                        ontap: () {
                          
                        },
                      ),
                      ToolsW(
                        title: "Image Compressor", 
                        icon: Assets.icon.minimize,
                        ontap: () {
                          
                        },
                      ),
                      ToolsW(
                        title: "Image Converter", 
                        icon: Assets.icon.documents,
                        ontap: () {
                          CSHT().showBottomSheet(
                            child: ImageConverterV(),
                          );
                        },
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}