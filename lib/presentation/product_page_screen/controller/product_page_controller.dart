import '/core/app_export.dart';
import 'package:shopsie/presentation/product_page_screen/models/product_page_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/data/models/id/get_id_resp.dart';
import 'package:shopsie/data/apiClient/api_client.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopsie/data/models/cartIdLineItems/post_cart_id_line_items_resp.dart';

class ProductPageController extends GetxController {
  Rx<String?> productId = Get.arguments[NavigationArgs.productId];

  Rx<ProductPageModel> productPageModelObj = ProductPageModel().obs;

  GetIdResp getIdResp = GetIdResp();

  PostCartIdLineItemsResp postCartIdLineItemsResp = PostCartIdLineItemsResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchId(
      successCall: _onFetchIdSuccess,
      errCall: _onFetchIdError,
      id: productId.value,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchId(
      {VoidCallback? successCall, VoidCallback? errCall, String? id}) async {
    return Get.find<ApiClient>().fetchId(
        onSuccess: (resp) {
          onFetchIdSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchIdError(err);
          if (errCall != null) {
            errCall();
          }
        },
        id: id);
  }

  void onFetchIdSuccess(var response) {
    getIdResp = GetIdResp.fromJson(response);
  }

  void onFetchIdError(var err) {
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

  void _onFetchIdSuccess() {
    productPageModelObj.value.productTitleTxt.value =
        getIdResp.product!.title!.toString();
    productPageModelObj.value.descriptionTxt.value =
        getIdResp.product!.description!.toString();
    productPageModelObj.value.productImageImg.value =
        getIdResp.product!.thumbnail!.toString();
    productPageModelObj.value.variantIdTxt.value =
        (getIdResp.product!.variants != null
            ? getIdResp.product!.variants![0].id
            : "0")!;
    productPageModelObj.value.priceTxt.value = "\$ " +
        (getIdResp.product!.variants != null
            ? (getIdResp.product!.variants![0].prices != null
                ? getIdResp.product!.variants![0]?.prices![0].amount.toString()
                : "2000")
            : "0")!;
  }

  void _onFetchIdError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  void callCreateCartIdLineItems(Map req,
      {VoidCallback? successCall,
      VoidCallback? errCall,
      String? cartId}) async {
    return Get.find<ApiClient>().createCartIdLineItems(
        onSuccess: (resp) {
          onCreateCartIdLineItemsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateCartIdLineItemsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req,
        cartId: cartId);
  }

  void onCreateCartIdLineItemsSuccess(var response) {
    postCartIdLineItemsResp = PostCartIdLineItemsResp.fromJson(response);
  }

  void onCreateCartIdLineItemsError(var err) {
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
