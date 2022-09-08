import 'package:shopsie/data/models/carts/post_carts_resp.dart';

import '/core/app_export.dart';
import 'package:shopsie/presentation/cart_screen/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/data/models/lineItems/delete_line_items_resp.dart';
import 'package:shopsie/data/apiClient/api_client.dart';
import 'package:shopsie/data/models/lineItems/post_line_items_resp.dart';
import 'package:shopsie/data/models/lineItems/post_line_items_resp.dart';
import 'package:shopsie/data/models/cartId/get_cart_id_resp.dart';
import '../models/cart_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopsie/data/models/paymentSessions/post_payment_sessions_resp.dart';
import 'package:shopsie/data/models/complete/post_complete_resp.dart';

class CartController extends GetxController {
  Rx<CartModel> cartModelObj = CartModel().obs;

  DeleteLineItemsResp deleteLineItemsResp = DeleteLineItemsResp();

  PostLineItemsResp postLineItemsResp = PostLineItemsResp();

  GetCartIdResp getCartIdResp = GetCartIdResp();

  PostPaymentSessionsResp postPaymentSessionsResp = PostPaymentSessionsResp();

  PostCompleteResp postCompleteResp = PostCompleteResp();

  PostCartsResp postCartsResp = PostCartsResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchCartId(
      successCall: _onFetchCartIdSuccess,
      errCall: _onFetchCartIdError,
      cartId: Get.find<PrefUtils>().getCartId(),
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callDeleteLineItems(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      String? cartId,
      String? lineItems}) async {
    return Get.find<ApiClient>().deleteLineItems(
        onSuccess: (resp) {
          onDeleteLineItemsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onDeleteLineItemsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        cartId: cartId,
        lineItems: lineItems);
  }

  void onDeleteLineItemsSuccess(var response) {
    deleteLineItemsResp = DeleteLineItemsResp.fromJson(response);
  }

  void onDeleteLineItemsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
          messageText: Text('$err', style: TextStyle(color: Colors.white)));
    }
  }

  void callCreateLineItems(Map req,
      {VoidCallback? successCall,
      VoidCallback? errCall,
      String? cartId,
      String? lineItems}) async {
    return Get.find<ApiClient>().createLineItems(
        onSuccess: (resp) {
          onCreateLineItemsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateLineItemsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req,
        cartId: cartId,
        lineItems: lineItems);
  }

  void onCreateLineItemsSuccess(var response) {
    postLineItemsResp = PostLineItemsResp.fromJson(response);
  }

  void onCreateLineItemsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
          messageText: Text('$err', style: TextStyle(color: Colors.white)));
    }
  }

  void callFetchCartId(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      String? cartId}) async {
    return Get.find<ApiClient>().fetchCartId(
        onSuccess: (resp) {
          onFetchCartIdSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchCartIdError(err);
          if (errCall != null) {
            errCall();
          }
        },
        cartId: cartId);
  }

  void onFetchCartIdSuccess(var response) {
    getCartIdResp = GetCartIdResp.fromJson(response);
  }

  void onFetchCartIdError(var err) {
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

  void _onFetchCartIdSuccess() {
    List<CartItemModel> cartItemModelList = [];
    if (getCartIdResp!.cart!.items! != null &&
        getCartIdResp!.cart!.items!.isNotEmpty) {
      for (var element in getCartIdResp!.cart!.items!) {
        var cartItemModel = CartItemModel();
        cartItemModel.cartProductTxt.value = element.title!.toString();
        cartItemModel.productImg.value = element.thumbnail!.toString();
        cartItemModel.priceTxt.value = "\$ " + element.unitPrice!.toString();
        cartItemModel.qtyTxt.value = element.quantity!.toString();
        cartItemModel.itemId.value = element.id!.toString();
        cartItemModelList.add(cartItemModel);
      }
    }
    cartModelObj.value.cartItemList.value = cartItemModelList;
    cartModelObj.value.priceTwoTxt.value =
        "\$ " + getCartIdResp.cart!.subtotal!.toString();
  }

  void _onFetchCartIdError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  void callCreatePaymentSessions(Map req,
      {VoidCallback? successCall,
      VoidCallback? errCall,
      String? cartId}) async {
    return Get.find<ApiClient>().createPaymentSessions(
        onSuccess: (resp) {
          onCreatePaymentSessionsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreatePaymentSessionsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req,
        cartId: cartId);
  }

  void onCreatePaymentSessionsSuccess(var response) {
    postPaymentSessionsResp = PostPaymentSessionsResp.fromJson(response);
  }

  void onCreatePaymentSessionsError(var err) {
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

  void callCreateComplete(Map req,
      {VoidCallback? successCall,
      VoidCallback? errCall,
      String? cartId}) async {
    return Get.find<ApiClient>().createComplete(
        onSuccess: (resp) {
          onCreateCompleteSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateCompleteError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req,
        cartId: cartId);
  }

  void onCreateCompleteSuccess(var response) {
    postCompleteResp = PostCompleteResp.fromJson(response);
  }

  void onCreateCompleteError(var err) {
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
}
