import 'dart:developer';
import 'package:electi_test/controller/core/color/colors.dart';
import 'package:electi_test/controller/core/style/text_style.dart';
import 'package:electi_test/controller/user_controller/user_data_controller.dart';
import 'package:electi_test/view/widgets/home_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final userDataController = Get.put(UserDataController());
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User Details',
          style: GoogleFont.homeText,
        ),
        centerTitle: true,
        backgroundColor: AppColors.secondaryGreyColor,
        elevation: 0,
      ),
      body: Obx(() {
        final userData = userDataController.userData.value;
        return !userDataController.isLoading.value
            ? ListView.builder(
                itemCount: userData.data!.length,
                itemBuilder: (context, index) {
                  final userDetails =
                      userDataController.userData.value.data?[index];

                  log(userData.total.toString());
                  return HomeTileWidget(userDetails: userDetails);
                },
              )
            : const Center(child: CircularProgressIndicator(color: AppColors.blackColor,));
      }),
    );
  }
}
