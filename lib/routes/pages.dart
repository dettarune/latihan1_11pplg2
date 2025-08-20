import 'package:get/get.dart';
import 'package:latihan1_11pplg2/pages/CalculatorPage.dart';
import 'package:latihan1_11pplg2/pages/edit_football_player_page.dart';
import 'package:latihan1_11pplg2/pages/football_player_page.dart';
import 'package:latihan1_11pplg2/pages/bottom_navbar.dart';
import 'package:latihan1_11pplg2/pages/profile_page.dart';
import 'routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.profilePage,
      page: () => Navbar(),
    ),
    GetPage(
      name: AppRoutes.calculatorPage,
      page: () => CalculatorPage(),
    ),
    GetPage(
      name: AppRoutes.footballPlayerPage,
      page: () => FootballPlayerPage(),
    ),
    GetPage(
      name: AppRoutes.profilePage,
      page: () => ProfilePage(),
    ),GetPage(
      name: AppRoutes.footballEditPage,
      page: () => EditPlayerPage(),
    ),
  ];
}
