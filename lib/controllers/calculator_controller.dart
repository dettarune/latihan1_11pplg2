import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final txtAngka1 = TextEditingController();
  final txtAngka2 = TextEditingController();
  var hasil = "0".obs;

  void tambah() {
    double angka1 = double.tryParse(txtAngka1.text) ?? 0;
    double angka2 = double.tryParse(txtAngka2.text) ?? 0;
    hasil.value = (angka1 + angka2).toString();
  }

  void kurang() {
    double angka1 = double.tryParse(txtAngka1.text) ?? 0;
    double angka2 = double.tryParse(txtAngka2.text) ?? 0;
    hasil.value = (angka1 - angka2).toString();
  }

  void kali() {
    double angka1 = double.tryParse(txtAngka1.text) ?? 0;
    double angka2 = double.tryParse(txtAngka2.text) ?? 0;
    hasil.value = (angka1 * angka2).toString();
  }

  void bagi() {
    double angka1 = double.tryParse(txtAngka1.text) ?? 0;
    double angka2 = double.tryParse(txtAngka2.text) ?? 0;
    if (angka2 != 0) {
      hasil.value = (angka1 / angka2).toString();
    } else {
      Get.snackbar("Error", "Tidak bisa dibagi dengan nol.");
      hasil.value = "Error";
    }
  }

  void clear() {
    txtAngka1.clear();
    txtAngka2.clear();
    hasil.value = "0";
  }

  @override
  void onClose() {
    txtAngka1.dispose();
    txtAngka2.dispose();
    super.onClose();
  }
}
