import '/core/app_export.dart';
import 'package:shopsie/presentation/profile_security_page/models/profile_security_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/data/models/me/post_me_resp.dart';
import 'package:shopsie/data/apiClient/api_client.dart';

class ProfileSecurityController extends GetxController {
  ProfileSecurityController(this.profileSecurityModelObj);

  TextEditingController currentPasswordController = TextEditingController();

  TextEditingController newPasswordOneController = TextEditingController();

  Rx<ProfileSecurityModel> profileSecurityModelObj;

  PostMeResp postMeResp = PostMeResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    currentPasswordController.dispose();
    newPasswordOneController.dispose();
  }

  void callCreateMe(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createMe(
        headers: {
          'Cookie':
              'connect.sid=s%3Acuwi1AGz4JWfQV95pGwkASv2zjYLvVp-.oephyhenVmqPd63H1Ca%2FjhFiYMuQsyQNvIvYSpnEBog',
        },
        onSuccess: (resp) {
          onCreateMeSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateMeError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateMeSuccess(var response) {
    postMeResp = PostMeResp.fromJson(response);
  }

  void onCreateMeError(var err) {
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
