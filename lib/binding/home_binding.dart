import 'package:flutter_pattern/controller/home_controller.dart';
import 'package:flutter_pattern/network/home_service.dart';
import 'package:flutter_pattern/repository/home/home_repository.dart';
import 'package:flutter_pattern/repository/home/home_repository_impl.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeService>(() => HomeService());
    Get.lazyPut<HomeRepository>(
        () => HomeRepositoryImpl(Get.find<HomeService>()));
    Get.lazyPut<HomeController>(
        () => HomeController(Get.find<HomeRepository>()));
  }
}
