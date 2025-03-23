import 'package:file_converter_app/core/routes/app_route.dart';
import 'package:file_converter_app/core/routes/app_route_names.dart';
import 'package:file_converter_app/core/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'File Converter App',
      theme: lightTheme,
      getPages: getpage,
      initialRoute: splash,
    );
  }
}