import '/core/app_export.dart';
import 'package:shopsie/presentation/product_search_screen/models/product_search_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/data/models/products/get_products_resp.dart';
import 'package:shopsie/data/apiClient/api_client.dart';
import '../models/product_search_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductSearchController extends GetxController {
  TextEditingController appbarController = TextEditingController();

  Rx<ProductSearchModel> productSearchModelObj = ProductSearchModel().obs;

  Rx<List<ProductSearchItemModel>> _dataList = Rx([]);

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
    appbarController.dispose();
  }

  void callFetchProducts(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchProducts(
        headers: {
          'Content-Type': 'application/json',
        },
        onSuccess: (resp) {
          onFetchProductsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
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

  List<ProductSearchItemModel> filterScreenListByName() {
    List<ProductSearchItemModel> inFilteredList = [];
    if (appbarController.text.length > 0) {
      inFilteredList.addAll(_dataList.value.where((element) =>
          element.productNameTxt
              .toLowerCase()
              .contains(appbarController.text.toLowerCase()) ||
          element.productNameTxt
              .toLowerCase()
              .startsWith(appbarController.text.toLowerCase())));
      return inFilteredList;
    } else {
      return _dataList.value;
    }
  }

  void _onFetchProductsSuccess() {
    List<ProductSearchItemModel> productSearchItemModelList = [];
    if (getProductsResp!.products! != null &&
        getProductsResp!.products!.isNotEmpty) {
      for (var element in getProductsResp!.products!) {
        var productSearchItemModel = ProductSearchItemModel();
        productSearchItemModel.productNameTxt.value = element.title!.toString();
        productSearchItemModel.imageImg.value = element.thumbnail!.toString();
        productSearchItemModel.idTxt.value = element.id!.toString();
        productSearchItemModel.priceTxt.value = "\$ " +
            (element.variants != null
                ? (element.variants![0].prices != null
                    ? element.variants![0].prices![0].amount.toString()
                    : "2000")
                : "0");
        productSearchItemModelList.add(productSearchItemModel);
      }
    }
    _dataList.value.clear();
    productSearchModelObj.value.productSearchItemList.value =
        productSearchItemModelList;
    _dataList.value.addAll(productSearchModelObj.value.productSearchItemList);
  }

  void _onFetchProductsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  void searchProduct(String query) {
    if (query.length > 0) {
      productSearchModelObj.value.productSearchItemList.clear();
      productSearchModelObj.value.productSearchItemList.addAll(_dataList.value
          .where((element) =>
              element.productNameTxt
                  .toLowerCase()
                  .contains(query.toLowerCase()) ||
              element.productNameTxt
                  .toLowerCase()
                  .startsWith(query.toLowerCase())));
    } else {
      this.callFetchProducts(
        successCall: _onFetchProductsSuccess,
        errCall: _onFetchProductsError,
      );
    }
  }
}
