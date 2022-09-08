import '/core/app_export.dart';
import 'package:shopsie/presentation/profile_address_details_page/models/profile_address_details_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/data/models/addressId/delete_address_id_resp.dart';
import 'package:shopsie/data/apiClient/api_client.dart';
import 'package:shopsie/data/models/auth/get_auth_resp.dart';
import '../models/listhomeaddress_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopsie/data/models/addresses/post_addresses_resp.dart';

class ProfileAddressDetailsController extends GetxController {
  ProfileAddressDetailsController(this.profileAddressDetailsModelObj);

  TextEditingController addressOneController = TextEditingController();

  TextEditingController addressTwoController = TextEditingController();

  TextEditingController cityOneController = TextEditingController();

  TextEditingController postalcodeOneController = TextEditingController();

  TextEditingController phoneNoController = TextEditingController();

  Rx<ProfileAddressDetailsModel> profileAddressDetailsModelObj;

  DeleteAddressIdResp deleteAddressIdResp = DeleteAddressIdResp();

  GetAuthResp getAuthResp = GetAuthResp();

  PostAddressesResp postAddressesResp = PostAddressesResp();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(milliseconds: 600), () {
      this.callFetchAuth(
        successCall: _onFetchAuthSuccess,
        errCall: _onFetchAuthError,
      );
      // Do something
    });
  }

  @override
  void onClose() {
    super.onClose();
    addressOneController.dispose();
    addressTwoController.dispose();
    cityOneController.dispose();
    postalcodeOneController.dispose();
    phoneNoController.dispose();
  }

  void callDeleteAddressId(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      Rx<String>? addressId}) async {
    return Get.find<ApiClient>().deleteAddressId(
        onSuccess: (resp) {
          onDeleteAddressIdSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onDeleteAddressIdError(err);
          if (errCall != null) {
            errCall();
          }
        },
        addressId: addressId.toString());
  }

  void onDeleteAddressIdSuccess(var response) {
    deleteAddressIdResp = DeleteAddressIdResp.fromJson(response);
  }

  void onDeleteAddressIdError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
          messageText: Text('$err', style: TextStyle(color: Colors.white)));
    }
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
    List<ListhomeaddressItemModel> listhomeaddressItemModelList = [];
    if (getAuthResp!.customer!.shippingAddresses! != null &&
        getAuthResp!.customer!.shippingAddresses!.isNotEmpty) {
      for (var element in getAuthResp!.customer!.shippingAddresses!) {
        var listhomeaddressItemModel = ListhomeaddressItemModel();
        listhomeaddressItemModel.addAddressOneTxt.value =
            element.address1!.toString();
        listhomeaddressItemModel.addAddressTwoTxt.value =
            element.address2!.toString();
        listhomeaddressItemModel.addPostalcodeTxt.value =
            element.postalCode!.toString();
        listhomeaddressItemModel.addCityTxt.value = element.city!.toString();
        listhomeaddressItemModel.idTxt.value = element.id!.toString();

        listhomeaddressItemModelList.add(listhomeaddressItemModel);
      }
    }
    profileAddressDetailsModelObj.value.listhomeaddressItemList.value =
        listhomeaddressItemModelList;
  }

  void _onFetchAuthError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  void callCreateAddresses(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createAddresses(
        onSuccess: (resp) {
          onCreateAddressesSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateAddressesError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateAddressesSuccess(var response) {
    postAddressesResp = PostAddressesResp.fromJson(response);
    addressOneController.text = '';
    addressTwoController.text = '';
    cityOneController.text = '';
    phoneNoController.text = '';
    postalcodeOneController.text = '';
  }

  void onCreateAddressesError(var err) {
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
