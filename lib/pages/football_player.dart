import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/football_player_controller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class FootballPlayer extends StatelessWidget {
  FootballPlayer({super.key});

  final FootballPlayerController controller = Get.put(FootballPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Man. United Players")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(() {
          return ListView.builder(
            itemCount: controller.players.length,
            itemBuilder: (context, index) {
              final player = controller.players[index];
              return ListTile(
                title: Text(player["name"] ?? ""),
                subtitle: Text(
                  "Position: ${player["position"] ?? ""} | Number: ${player["number"] ?? ""}",
                ),
                trailing: const Icon(Icons.edit),
                onTap: () {
                  Get.toNamed(
                    AppRoutes.footballEditPage,
                    arguments: index,
                  );
                },
              );
            },
          );
        }),
      ),
    );
  }
}
