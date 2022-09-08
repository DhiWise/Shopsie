import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopsie/data/models/customerId/get_customer_id_resp.dart';
import 'package:shopsie/data/models/email/get_email_resp.dart';
import 'package:shopsie/data/models/storeAuth/post_store_auth_resp.dart';

import '/core/app_export.dart';
import 'package:shopsie/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/data/models/customers/post_customers_resp.dart';
import 'package:shopsie/data/apiClient/api_client.dart';
import 'package:shopsie/data/models/carts/post_carts_resp.dart';
import 'package:shopsie/data/models/customers/post_customers_resp.dart';
import 'package:shopsie/data/models/carts/post_carts_resp.dart';
import 'package:shopsie/data/models/customers/post_customers_resp.dart';
import 'package:shopsie/data/models/carts/post_carts_resp.dart';

class RegisterController extends GetxController {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController1 = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  PostCustomersResp postCustomersResp = PostCustomersResp();

  PostCartsResp postCartsResp = PostCartsResp();

  GetEmailResp getEmailResp = GetEmailResp(exists: true);

  PostStoreAuthResp postStoreAuthResp = PostStoreAuthResp();

  GetCustomerIdResp getCustomerIdResp = GetCustomerIdResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController1.dispose();
    passwordController1.dispose();
  }

  void callCreateCustomers(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createCustomers(
        headers: {
          'content-type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateCustomersSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateCustomersError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateCustomersSuccess(var response) {
    postCustomersResp = PostCustomersResp.fromJson(response);
  }

  void onCreateCustomersError(var err) {
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

  void callCreateCarts(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createCarts(
        onSuccess: (resp) {
          onCreateCartsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateCartsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateCartsSuccess(var response) {
    postCartsResp = PostCartsResp.fromJson(response);
  }

  void onCreateCartsError(var err) {
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

  void callFetchEmail(
      {VoidCallback? successCall, VoidCallback? errCall, String? email}) async {
    return Get.find<ApiClient>().fetchEmail(
        onSuccess: (resp) {
          onFetchEmailSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchEmailError(err);
          if (errCall != null) {
            errCall();
          }
        },
        email: email);
  }

  void onFetchEmailSuccess(var response) {
    getEmailResp = GetEmailResp.fromJson(response);
  }

  void onFetchEmailError(var err) {
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

  void callCreateStoreAuth(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createStoreAuth(
        onSuccess: (resp) {
          onCreateStoreAuthSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateStoreAuthError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateStoreAuthSuccess(var response) {
    try {
      postStoreAuthResp = PostStoreAuthResp.fromJson(response);
    } catch (e, s) {}
  }

  void onCreateStoreAuthError(var err) {
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

  void _onCreateStoreAuthError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  void callFetchCustomerId(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      String? customerId}) async {
    return Get.find<ApiClient>().fetchCustomerId(
        onSuccess: (resp) {
          onFetchCustomerIdSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchCustomerIdError(err);
          if (errCall != null) {
            errCall();
          }
        },
        customerId: customerId);
  }

  void onFetchCustomerIdSuccess(var response) {
    getCustomerIdResp = GetCustomerIdResp.fromJson(response);
  }

  void onFetchCustomerIdError(var err) {
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
