import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/calculator_controller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'package:latihan1_11pplg2/widgets/custom_input_field.dart';
import 'package:latihan1_11pplg2/widgets/result_display.dart';
import 'package:latihan1_11pplg2/widgets/operation_grid.dart';
import 'package:latihan1_11pplg2/widgets/clear_button.dart';
import 'package:latihan1_11pplg2/pages/football_player_page.dart';

class CalculatorPage extends StatelessWidget {
  final CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF0F6),
      appBar: AppBar(
        title: const Text(
          "PePeLeGe Calculator",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ResultDisplay(),
            const SizedBox(height: 32),
            CustomInputField(
              controller: calculatorController.txtAngka1,
              label: "Angka Pertama",
              isNumeric: true,
            ),
            const SizedBox(height: 20),
            CustomInputField(
              controller: calculatorController.txtAngka2,
              label: "Angka Kedua",
              isNumeric: true,
            ),
            const SizedBox(height: 32),
            const OperationGrid(),
            const SizedBox(height: 24),
            const ClearButton(),

          ],
        ),
      ),
    );
  }
}
