import 'package:flutter_pattern/binding/home_binding.dart';
import 'package:flutter_pattern/common/ui/routes/page_routes.dart';
import 'package:flutter_pattern/screens/home/home.dart';
import 'package:get/get.dart';

class Pages {
  static final PAGES = [
    GetPage(name: Routes.ROOT, page: () => const Home(), binding: HomeBinding())
  ];
}
