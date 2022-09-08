import 'controller/profile_logout_controller.dart';
import 'models/profile_logout_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';
import 'package:shopsie/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class ProfileLogoutPage extends StatelessWidget {
  ProfileLogoutController controller =
      Get.put(ProfileLogoutController(ProfileLogoutModel().obs));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: CustomButton(
            width: 358,
            text: "lbl_logout2".tr.toUpperCase(),
            onTap: onTapBtnLogout2));
  }

  void onTapBtnLogout2() {
    controller.callDeleteAuth(
      successCall: _onDeleteAuthSuccess,
      errCall: _onDeleteAuthError,
    );
  }

  void _onDeleteAuthSuccess() {
    Get.offAllNamed(AppRoutes.loginScreen);
  }

  void _onDeleteAuthError() {}
}
