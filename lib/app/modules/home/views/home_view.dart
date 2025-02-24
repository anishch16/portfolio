import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/app_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildNavItem('About Me', 0),
                const SizedBox(width: 20),
                _buildNavItem('Projects', 1),
              ],
            ),
            AppButton(
              width: 50,
              height: 40,
              onPressed: (){}, title: "Let's Chat",
            )
          ],
        ),
        titleSpacing: 20,
      ),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/about-me',
        onGenerateRoute: controller.onGenerateRoute,
      ),
    );
  }
  Widget _buildNavItem(String label, int index) {
    return GestureDetector(
      onTap: () => controller.changePage(index),
      child: Obx(() {
        final isSelected = controller.currentIndex.value == index;
        return Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.blue : Colors.black,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 16,
          ),
        );
      }),
    );
  }
}
