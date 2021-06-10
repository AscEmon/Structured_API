import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:structured_api/Repository/MyRepository.dart';
import 'package:structured_api/Views/Utilis/AppRoutes.dart';
import 'package:structured_api/Views/Utilis/Check_connectivity.dart';

class LogInController extends GetxController {
  MyRepository repository;
  LogInController({required this.repository});

  final TextEditingController emailLogin = new TextEditingController();
  final TextEditingController passwordLogin = new TextEditingController();
  Duration? timerTastoPremuto;
  bool? dialogShow;
  loginFunction(
    GlobalKey<FormState> formKey,
  ) async {
    if (formKey.currentState!.validate()) {
      print(emailLogin.text);
      print(passwordLogin.text);
      isInternet().then(
        (internet) async {
          if (internet == true) {
            dialogShowMethod(
              true,
            );
            await repository
                .loginRepo(emailLogin.text, passwordLogin.text)
                .then(
              (login) {
                if (login == true) {
                  Get.back(closeOverlays: true);
                  Get.offAndToNamed(AppRoutes.HOMEPAGE);
                  emailLogin.clear();
                  passwordLogin.clear();
                } else {
                  Get.back(closeOverlays: true);
                  dialogShowMethod(false);
                }
              },
            );
          } else {
            Get.defaultDialog(
              title: "Internet Problem",
              content: Image.asset(
                "images/NoInternet_ic.png",
              ),
              buttonColor: Colors.black,
              onConfirm: () {
                Get.back();
              },
            );
          }
        },
      );
    } else {}

    update();
  }

  dialogShowMethod(dialogShow) {
    dialogShow == true
        ? Get.defaultDialog(
            barrierDismissible: false,
            title: "Loading....",
            content: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.red,
              ),
            ))
        : Get.defaultDialog(
            barrierDismissible: false,
            title: "Unauthorized",
            middleText: "Your Email and Password is not matching",
            confirmTextColor: Colors.white,
            buttonColor: Colors.black,
            onConfirm: () {
              Get.back();
            },
          );

    update();
  }
}
