import 'package:ecommerce_cource_asroo/logic/controllers/auth_controller.dart';
import 'package:ecommerce_cource_asroo/logic/controllers/settings_controller.dart';
import 'package:ecommerce_cource_asroo/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({Key? key}) : super(key: key);

  final controller = Get.find<SettingController>();
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Obx(
        //   () => Row(
        //     children: [
        //       Container(
        //         height: 100,
        //         width: 100,
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           shape: BoxShape.circle,
        //           image: DecorationImage(
        //             image: NetworkImage(
        //               authController.displayUserPhoto.value,
        //             ),
        //             fit: BoxFit.cover,
        //           ),
        //         ),
        //       ),
        //       const SizedBox(
        //         width: 15,
        //       ),
        //       Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           TextUtils(
        //             fontSize: 22,
        //             fontWeight: FontWeight.bold,
        //             text: controller
        //                 .capitalize(authController.displayUserName.value),
        //             color: Get.isDarkMode ? Colors.white : Colors.black,
        //             underLine: TextDecoration.none,
        //           ),
        //           TextUtils(
        //             fontSize: 14,
        //             fontWeight: FontWeight.bold,
        //             text: authController.displayUserEmail.value,
        //             color: Get.isDarkMode ? Colors.white : Colors.black,
        //             underLine: TextDecoration.none,
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  // image: NetworkImage(
                  //   authController.displayUserPhoto.value,
                  // ),
                  image: AssetImage('assets/images/profile.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextUtils(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  // text: controller.capitalize(authController.displayUserName.value),
                  text: 'Husam Dahliz',
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                  underLine: TextDecoration.none,
                ),
                TextUtils(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  // text: authController.displayUserEmail.value,
                  text: 'husam@gmail.com',
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                  underLine: TextDecoration.none,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
