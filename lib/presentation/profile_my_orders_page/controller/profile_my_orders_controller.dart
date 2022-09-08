import '/core/app_export.dart';
import 'package:shopsie/presentation/profile_my_orders_page/models/profile_my_orders_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/data/models/auth/get_auth_resp.dart';
import 'package:shopsie/data/apiClient/api_client.dart';
import '../models/listorderproductima_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfileMyOrdersController extends GetxController {
  ProfileMyOrdersController(this.profileMyOrdersModelObj);

  Rx<ProfileMyOrdersModel> profileMyOrdersModelObj;

  GetAuthResp getAuthResp = GetAuthResp();

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
    List<ListorderproductimaItemModel> ordersItemModelList = [];
    if (getAuthResp!.customer!.orders! != null &&
        getAuthResp!.customer!.orders!.isNotEmpty) {
      for (var element in getAuthResp!.customer!.orders!) {
        if (element.items != null && element.items!.isNotEmpty) {
          for (var item in element!.items!) {
            var ordersItemModel = new ListorderproductimaItemModel();
            ordersItemModel.orderProductnamTxt.value = item!.title!.toString();
            ordersItemModel.orderQtyTxt.value = item!.quantity!.toString();
            ordersItemModel.orderProductImaImg.value =
                item!.thumbnail!.toString();
            ordersItemModel.priceTxt.value =
                "\$ " + item!.unitPrice!.toString();
            ordersItemModel.productId.value =
                item!.variant!.productId!.toString();
            ordersItemModelList.add(ordersItemModel);
          }
        }
      }
    }
    profileMyOrdersModelObj.value.listorderproductimaItemList.value =
        ordersItemModelList;
  }

  void _onFetchAuthError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
