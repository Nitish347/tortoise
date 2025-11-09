import 'package:get/get.dart';
import 'package:tortoise/controller/device_controller.dart';
import 'package:tortoise/view/device_detail/controller/device_detail_controller.dart';

import '../view/search/controller/search_controller.dart';

class ControllerDi {

registerControllers() {
    Get.lazyPut(() => BrandSearchController());
    Get.lazyPut(() => DeviceDataController());
    Get.lazyPut(() => DeviceDetailController());

  }

}