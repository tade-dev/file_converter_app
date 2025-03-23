import 'package:file_converter_app/core/routes/app_route_names.dart';
import 'package:file_converter_app/ui/views/main/main_view.dart';
import 'package:file_converter_app/ui/views/splash/splash.dart';
import 'package:get/get.dart';

List<GetPage> getpage = [
  GetPage(
    name: splash, 
    page: ()=> SplashView()
  ),
  GetPage(
    name: mainView, 
    page: ()=> MainView()
  ),
];