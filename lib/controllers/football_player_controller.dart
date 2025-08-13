import 'package:get/get.dart';

class FootballPlayerController extends GetxController {
  var players = <Map<String, String>>[
    {
      "name": "Verstappen",
      "position": "Midfielder",
      "number": "8",
      "imagePath": "assets/verstappen.jpeg",
    },
    {
      "name": "L. Norris",
      "position": "Winger",
      "number": "16",
      "imagePath": "assets/norris.jpg",
    },
    {
      "name": "Lewis H.",
      "position": "Striker",
      "number": "9",
      "imagePath": "assets/lewis.jpg",
    },
    {
      "name": "Zulfiqar",
      "position": "Forward",
      "number": "19",
      "imagePath": "assets/fiqar.enc",
    },
    {
      "name": "Ronaldo",
      "position": "Forward",
      "number": "11",
      "imagePath": "assets/fiqar.enc",
    },
  ].obs;

  void editPlayer(int index, String newName, String newPosition, String newNumber) {
    if (newName.trim().isNotEmpty &&
        newPosition.trim().isNotEmpty &&
        newNumber.trim().isNotEmpty) {
      final oldImagePath = players[index]["imagePath"];
      players[index] = {
        "name": newName.trim(),
        "position": newPosition.trim(),
        "number": newNumber.trim(),
        "imagePath": oldImagePath ?? "",
      };
    }
  }
}
