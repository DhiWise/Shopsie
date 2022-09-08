import '/core/app_export.dart';
import 'package:shopsie/presentation/product_discover_screen/models/product_discover_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/data/models/products/get_products_resp.dart';
import 'package:shopsie/data/apiClient/api_client.dart';
import '../models/gridproductname_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductDiscoverController extends GetxController {
  Rx<ProductDiscoverModel> productDiscoverModelObj = ProductDiscoverModel().obs;

  GetProductsResp getProductsResp = GetProductsResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchProducts(
      successCall: _onFetchProductsSuccess,
      errCall: _onFetchProductsError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchProducts(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchProducts(onSuccess: (resp) {
      onFetchProductsSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchProductsError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchProductsSuccess(var response) {
    getProductsResp = GetProductsResp.fromJson(response);
  }

  void onFetchProductsError(var err) {
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

  void _onFetchProductsSuccess() {
    List<GridproductnameItemModel> gridproductnameItemModelList = [];
    if (getProductsResp.products! != null &&
        getProductsResp.products!.isNotEmpty) {
      for (var element in getProductsResp.products!) {
        var gridproductnameItemModel = GridproductnameItemModel();
        gridproductnameItemModel.productNameTxt.value =
            element.title!.toString();
        gridproductnameItemModel.imageImg.value = element.thumbnail!.toString();
        gridproductnameItemModel.priceTxt.value = "\$ " +
            (element.variants != null
                ? (element.variants![0].prices != null
                    ? element.variants![0].prices![0].amount.toString()
                    : "2000")
                : "0");
        gridproductnameItemModel.idTxt.value = element.id!.toString();
        gridproductnameItemModelList.add(gridproductnameItemModel);
      }
    }
    productDiscoverModelObj.value.gridproductnameItemList.value =
        gridproductnameItemModelList;
  }

  void _onFetchProductsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
