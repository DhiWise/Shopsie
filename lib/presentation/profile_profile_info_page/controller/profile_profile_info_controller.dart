import '/core/app_export.dart';
import 'package:shopsie/presentation/profile_profile_info_page/models/profile_profile_info_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/data/models/auth/get_auth_resp.dart';
import 'package:shopsie/data/apiClient/api_client.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopsie/data/models/me/post_me_resp.dart';

class ProfileProfileInfoController extends GetxController {
  ProfileProfileInfoController(this.profileProfileInfoModelObj);

  TextEditingController firstNameOneController = TextEditingController();

  TextEditingController lastNameOneController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  Rx<ProfileProfileInfoModel> profileProfileInfoModelObj;

  GetAuthResp getAuthResp = GetAuthResp();

  PostMeResp postMeResp = PostMeResp();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(milliseconds: 600), () {
      this.callFetchAuth(
        successCall: _onFetchAuthSuccess,
        errCall: _onFetchAuthError,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
    firstNameOneController.dispose();
    lastNameOneController.dispose();
    emailOneController.dispose();
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
    profileProfileInfoModelObj.value.emailTxt.value =
        getAuthResp.customer!.email!.toString();
    emailOneController.text = getAuthResp.customer!.email!.toString();
    profileProfileInfoModelObj.value.firstNameTxt.value =
        getAuthResp.customer!.firstName!.toString();
    firstNameOneController.text = getAuthResp.customer!.firstName!.toString();
    profileProfileInfoModelObj.value.lastNameTxt.value =
        getAuthResp.customer!.lastName!.toString();
    lastNameOneController.text = getAuthResp.customer!.lastName!.toString();
  }

  void _onFetchAuthError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  void callCreateMe(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createMe(
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
