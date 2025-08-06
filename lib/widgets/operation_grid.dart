import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/calculator_controller.dart';
import 'package:latihan1_11pplg2/widgets/custom_button.dart';

class OperationGrid extends StatelessWidget {
  const OperationGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CalculatorController>();

    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 2.5,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        CustomButton(text: "+", color: Colors.indigo, onPressed: controller.tambah),
        CustomButton(text: "-", color: Colors.indigo, onPressed: controller.kurang),
        CustomButton(text: "x", color: Colors.indigo, onPressed: controller.kali),
        CustomButton(text: "/", color: Colors.indigo, onPressed: controller.bagi),
      ],
    );
  }
}
