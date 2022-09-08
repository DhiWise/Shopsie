import 'package:shared_preferences/shared_preferences.dart';

import '/core/app_export.dart';
import 'package:shopsie/presentation/profile_logout_page/models/profile_logout_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/data/apiClient/api_client.dart';

class ProfileLogoutController extends GetxController {
  ProfileLogoutController(this.profileLogoutModelObj);

  Rx<ProfileLogoutModel> profileLogoutModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callDeleteAuth(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().deleteAuth(onSuccess: (resp) {
      onDeleteAuthSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onDeleteAuthError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  Future<void> onDeleteAuthSuccess(var response) async {
    Get.find<PrefUtils>().clearPreferencesData();
  }

  void onDeleteAuthError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
}
