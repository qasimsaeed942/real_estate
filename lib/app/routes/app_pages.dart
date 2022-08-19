import 'package:get/get.dart';

import '../modules/filter_sheet/bindings/filter_sheet_binding.dart';
import '../modules/filter_sheet/views/filter_sheet_view.dart';
import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/properties_details/bindings/properties_details_binding.dart';
import '../modules/properties_details/views/properties_details_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.FILTER_SHEET,
      page: () => const FilterSheetView(),
      binding: FilterSheetBinding(),
    ),
    GetPage(
      name: _Paths.PROPERTIES_DETAILS,
      page: () => const PropertiesDetailsView(),
      binding: PropertiesDetailsBinding(),
    ),
  ];
}
