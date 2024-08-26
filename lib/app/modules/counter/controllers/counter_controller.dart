import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
final bilangan = 0.obs;

void tambahsatu() {
  if (bilangan.value >=20){
    Get.snackbar('Warning', 'Udah Ah Cape',
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.amber);
  }else{
    bilangan.value++;
  }
}
void kurangsatu() {
  if (bilangan.value <=0){
    Get.snackbar('Warning', 'Udah Woi',
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.amber);
  }else{
    bilangan.value--;
  }
}
 void reset() {
    bilangan.value = 0;
  }
}

