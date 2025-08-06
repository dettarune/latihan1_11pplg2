import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final txtAngka1 = TextEditingController();
  final txtAngka2 = TextEditingController();
  var hasil = "0".obs;

  void tambah() {
    double angka1 = double.parse(txtAngka1.text.toString());
    double angka2 = double.parse(txtAngka2.text.toString());
    double hasilJumlah = angka1 + angka2;
    hasil.value = hasilJumlah.toString();
  }

  void kurang() {
    double angka1 = double.parse(txtAngka1.text.toString());
    double angka2 = double.parse(txtAngka2.text.toString());
    double hasilKurang = angka1 - angka2;
    hasil.value = hasilKurang.toString();
  }

  void kali() {
    double angka1 = double.parse(txtAngka1.text.toString());
    double angka2 = double.parse(txtAngka2.text.toString());
    double hasilKali = angka1 * angka2;
    hasil.value = hasilKali.toString();
  }

  void bagi() {
    double angka1 = double.parse(txtAngka1.text.toString());
    double angka2 = double.parse(txtAngka2.text.toString());
    if (angka2 != 0) {
      double hasilBagi = angka1 / angka2;
      hasil.value = hasilBagi.toString();
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