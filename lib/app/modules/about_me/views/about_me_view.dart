import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/app_button.dart';
import '../controllers/about_me_controller.dart';

class AboutMeView extends GetView<AboutMeController> {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 768; // Breakpoint for mobile
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height * 0.05),
                  if (isMobile)
                    Center(
                      child: Container(
                        width: constraints.maxWidth * 0.4,
                        height: constraints.maxWidth * 0.4,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/my_image.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  if (isMobile) const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome to my Portfolio",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: isMobile ? 20 : 25,
                                  color: Colors.grey
                              ),
                            ),
                            const SizedBox(height: 20),
                            RichText(
                              textAlign: isMobile ? TextAlign.center : TextAlign.start,
                              text: TextSpan(
                                text: 'I am\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: isMobile ? 50 : 70,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Anish Chaulagain\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: isMobile ? 50 : 70,
                                      color: Colors.blue
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Flutter Developer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: isMobile ? 50 : 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Collaborating with highly skilled individuals, our agency delivers top-quality services.",
                              textAlign: isMobile ? TextAlign.center : TextAlign.start,
                              style: TextStyle(fontWeight: FontWeight.bold,


                                  fontSize: isMobile ? 20 : 25,                                       color: Colors.grey
                              ),
                            ),
                            const SizedBox(height: 20),
                            isMobile
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      AppButton(
                                        width: isMobile ? 160 : Get.width * 0.9,
                                        height: 50,
                                        onPressed: () {},
                                        title: "Let's Chat",
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.02,
                                      ),
                                      AppButton(
                                        width: isMobile ? 160 : Get.width * 0.9,
                                        height: 50,
                                        onPressed: () {},
                                        title: "View Projects",
                                      ),
                                    ],
                                  )
                                : Row(
                                    children: [
                                      AppButton(
                                        height: 50,
                                        onPressed: () {},
                                        title: "Let's Chat",
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.01,
                                      ),
                                      AppButton(
                                        height: 50,
                                        onPressed: () {},
                                        title: "View Projects",
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                      if (!isMobile)
                        Container(
                          width: constraints.maxWidth * 0.4,
                          height: constraints.maxHeight * 0.9,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            image: DecorationImage(
                              image: AssetImage("assets/images/my_image.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
