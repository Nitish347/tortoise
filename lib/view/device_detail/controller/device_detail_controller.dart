import 'package:get/get.dart';
import 'package:tortoise/models/device_model.dart';

class DeviceDetailController {
  RxString selectedColor = ''.obs;
  RxString selectedStorage = ''.obs;


  onInitial(Device device){
    selectedColor.value = device.colorOptions.first;
    selectedStorage.value = device.storageOptions.first;
  }

  onSelectColor(String color) {
    selectedColor.value = color;
  }

  onSelectStorage(String color) {
    selectedStorage.value = color;
  }
}