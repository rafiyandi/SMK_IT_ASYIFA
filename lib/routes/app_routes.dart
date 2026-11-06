import 'package:basic_learn/binding/home_binding.dart';
import 'package:basic_learn/pages/initial_page.dart';
import 'package:basic_learn/routes/app_routes_named.dart';
import 'package:get/get.dart';

import '../pages/home_page.dart';
import '../pages/page_dua.dart';
import '../pages/page_satu.dart';

class AppPages {
  static final appRoutes = [
    GetPage(name: AppRoutesNamed.initial, page: () => InitialPage()),

    GetPage(
      name: AppRoutesNamed.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(name: AppRoutesNamed.pageSatu, page: () => PageSatu()),
    GetPage(name: AppRoutesNamed.pageDua, page: () => PageDua()),
  ];
}
