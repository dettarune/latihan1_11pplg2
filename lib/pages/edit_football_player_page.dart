import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/football_player_controller.dart';

class EditPlayerPage extends StatelessWidget {
  final int playerIndex;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController playerNumberController = TextEditingController();
  final TextEditingController imagePathController = TextEditingController();

  EditPlayerPage({super.key, required this.playerIndex}) {
    final controller = Get.find<FootballPlayerController>();
    final player = controller.players[playerIndex];

    // Inisialisasi text controller dari Map player
    nameController.text = player["name"] ?? "";
    positionController.text = player["position"] ?? "";
    playerNumberController.text = player["number"] ?? "";
    imagePathController.text = player["imagePath"] ?? "";
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FootballPlayerController>();

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (imagePathController.text.isNotEmpty)
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePathController.text,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              const SizedBox(height: 15),
              TextField(
                controller: imagePathController,
                decoration: const InputDecoration(
                  labelText: "Image Path (assets/...jpg)",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Player Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: positionController,
                decoration: const InputDecoration(
                  labelText: "Player Position",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: playerNumberController,
                decoration: const InputDecoration(
                  labelText: "Player Number",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  controller.editPlayer(
                    playerIndex,
                    nameController.text,
                    positionController.text,
                    playerNumberController.text,
                  );
                  Get.back();
                },
                icon: const Icon(Icons.save),
                label: const Text("Save"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
