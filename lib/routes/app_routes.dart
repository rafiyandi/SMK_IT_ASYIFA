import 'package:basic_learn/page_dua.dart';
import 'package:basic_learn/routes/app_routes_named.dart';
import 'package:get/get.dart';

import '../home_page.dart';
import '../page_satu.dart';

class AppPages {
  static final appRoutes = [
    GetPage(name: AppRoutesNamed.home, page: () => HomePage()),
    GetPage(name: AppRoutesNamed.pageSatu, page: () => PageSatu()),
    GetPage(name: AppRoutesNamed.pageDua, page: () => PageDua()),
  ];
}
