import 'package:file_converter_app/core/resources/colors_x.dart';
import 'package:flutter/material.dart';


final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  radioTheme: const RadioThemeData(
    fillColor: WidgetStatePropertyAll(Color(0xffCD5C5C))
  ),
  scaffoldBackgroundColor: ColorManager.white,
  appBarTheme: AppBarTheme(
    backgroundColor: ColorManager.white,
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: ColorManager.primary,
  ),
  switchTheme: const SwitchThemeData(
    thumbColor: WidgetStatePropertyAll(
      Colors.white
    ),
  ),
  cardColor: Colors.white,
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.white
  ),
  dividerTheme: const DividerThemeData(
    color: Color(0xffBCC6C5)
  ),
  iconTheme: IconThemeData(
    color: ColorManager.labelBlack
  ),
);