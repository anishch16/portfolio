import 'package:anish_portfolio/app/modules/about_me/bindings/about_me_binding.dart';
import 'package:anish_portfolio/app/modules/about_me/views/about_me_view.dart';
import 'package:anish_portfolio/app/modules/projects/bindings/projects_binding.dart';
import 'package:anish_portfolio/app/modules/projects/views/projects_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  final pages = <String>[
    '/about-me',
    '/projects',
  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/about-me') {
      return GetPageRoute(
        settings: settings,
        page: () => const AboutMeView(),
        binding: AboutMeBinding(),
      );
    }

    if (settings.name == '/projects') {
      return GetPageRoute(
        settings: settings,
        page: () => const ProjectsView(),
        binding: ProjectsBinding(),
      );
    }
    return null;
  }
}
