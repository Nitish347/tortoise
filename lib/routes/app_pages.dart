import 'package:tortoise/models/device_model.dart';
import 'package:tortoise/view/device_detail/device_details_view.dart';
import 'package:tortoise/view/search/search_view.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.searchView, page: () => const SearchView(), binding: null, middlewares: []),
    GetPage(
        name: AppRoutes.deviceDetailsView,
        page: () {
          final args = Get.arguments as Map<String, dynamic>? ?? {};
          Device device = args['device'];
          return  DeviceDetailsView(device: device);
        },
        binding: null,
        middlewares: []),
  ];
}
