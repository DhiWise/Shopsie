import 'package:shopsie/data/apiClient/api_client.dart';
import 'package:shopsie/data/models/auth/get_auth_resp.dart';
import '/core/app_export.dart';
import 'package:shopsie/presentation/profile_tab_screen/models/profile_tab_model.dart';
import 'package:flutter/material.dart';

class ProfileTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ProfileTabModel> profileTabModelObj = ProfileTabModel().obs;
  GetAuthResp getAuthResp = GetAuthResp();

  late TabController groupTabController =
      Get.put(TabController(vsync: this, length: 5));

  @override
  void onReady() {
    super.onReady();
    this.callFetchAuth(
      successCall: _onFetchAuthSuccess,
      errCall: _onFetchAuthError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchAuth({VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchAuth(onSuccess: (resp) {
      onFetchAuthSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchAuthError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchAuthSuccess(var response) {
    getAuthResp = GetAuthResp.fromJson(response);
  }

  void onFetchAuthError(var err) {
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

  void _onFetchAuthSuccess() {
    profileTabModelObj.value.nameTxt.value =
        getAuthResp.customer!.firstName!.toString();
    profileTabModelObj.value.emailTxt.value =
        getAuthResp.customer!.email!.toString();
  }

  void _onFetchAuthError() {}
}
