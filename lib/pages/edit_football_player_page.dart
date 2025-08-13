import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/football_player_controller.dart';

import 'package:latihan1_11pplg2/widgets/custom_input_field.dart';
import 'package:latihan1_11pplg2/widgets/custom_button.dart';

class EditPlayerPage extends StatelessWidget {
  const EditPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>;
    final int playerIndex = args["playerIndex"];
    final Map<String, String> player = Map<String, String>.from(args["player"]);

    print(args);
    print(player);

    final TextEditingController nameController = TextEditingController(text: player["name"] ?? "");
    final TextEditingController positionController = TextEditingController(text: player["position"] ?? "");
    final TextEditingController playerNumberController = TextEditingController(text: player["number"] ?? "");
    final TextEditingController imagePathController = TextEditingController(text: player["imagePath"] ?? "");

    final controller = Get.find<FootballPlayerController>();

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (imagePathController.text.isNotEmpty)
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    imagePathController.text,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              CustomInputField(
                controller: nameController,
                label: "Player Name",
              ),
              const SizedBox(height: 20),
              CustomInputField(
                controller: positionController,
                label: "Player Position",
              ),
              const SizedBox(height: 20),
              CustomInputField(
                controller: playerNumberController,
                label: "Player Number",
                isNumeric: true,
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: "Save",
                color: Colors.blue,
                onPressed: () {
                  controller.editPlayer(
                    playerIndex,
                    nameController.text,
                    positionController.text,
                    playerNumberController.text,
                  );
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
