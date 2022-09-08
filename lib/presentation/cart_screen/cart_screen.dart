import 'package:shopsie/core/constants/shopsie.dart';
import '../cart_screen/widgets/cart_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';
import 'package:shopsie/widgets/custom_button.dart';
import 'models/cart_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopsie/data/models/lineItems/post_line_items_req.dart';
import 'models/cart_item_model.dart';
import 'package:shopsie/data/models/lineItems/post_line_items_req.dart';
import 'models/cart_item_model.dart';
import 'package:shopsie/data/models/paymentSessions/post_payment_sessions_req.dart';
import 'package:shopsie/data/models/complete/post_complete_req.dart';
import 'package:shopsie/data/models/carts/post_carts_req.dart';

// ignore_for_file: must_be_immutable
class CartScreen extends GetWidget<CartController> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(bottom: 133),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700),
                                  child: Padding(
                                      padding: getPadding(
                                          left: 19,
                                          top: 22,
                                          right: 19,
                                          bottom: 23),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                                onTap: () {
                                                  onTapImgArrowleft();
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        top: 3, bottom: 1),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleft,
                                                        height: getVerticalSize(
                                                            13.00),
                                                        width:
                                                            getHorizontalSize(
                                                                18.00)))),
                                            Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 2,
                                                          bottom: 1,
                                                          right: 135),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgSignal,
                                                          height:
                                                              getVerticalSize(
                                                                  14.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  48.00))),
                                                ])
                                          ]))),
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(top: 26),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 26, right: 26),
                                                child: Text(
                                                    "lbl_my_cart"
                                                        .tr
                                                        .toUpperCase(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtLatoRegular18
                                                        .copyWith(
                                                            letterSpacing:
                                                                1.08)))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 28,
                                                    right: 16),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        physics:
                                                            BouncingScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      358.00),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .gray200));
                                                        },
                                                        itemCount: controller
                                                            .cartModelObj
                                                            .value
                                                            .cartItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          CartItemModel model =
                                                              controller
                                                                  .cartModelObj
                                                                  .value
                                                                  .cartItemList[index];
                                                          return CartItemWidget(
                                                              model,
                                                              onTapImgTrash:
                                                                  () {
                                                            controller.callDeleteLineItems(
                                                                successCall:
                                                                    _onDeleteLineItemsSuccess,
                                                                errCall:
                                                                    _onDeleteLineItemsError,
                                                                cartId: Get.find<
                                                                        PrefUtils>()
                                                                    .getCartId(),
                                                                lineItems: model
                                                                    .itemId
                                                                    .value);
                                                          }, onTapImgMinus: () {
                                                            PostLineItemsReq
                                                                postLineItemsReq =
                                                                PostLineItemsReq(
                                                                    quantity: int.parse(model
                                                                            .qtyTxt
                                                                            .toString()) -
                                                                        1);
                                                            if (postLineItemsReq
                                                                    .quantity !=
                                                                0) {
                                                              controller.callCreateLineItems(
                                                                  postLineItemsReq
                                                                      .toJson(),
                                                                  successCall:
                                                                      _onCreateLineItemsSuccess,
                                                                  errCall:
                                                                      _onCreateLineItemsError,
                                                                  cartId: Get.find<
                                                                          PrefUtils>()
                                                                      .getCartId(),
                                                                  lineItems: model
                                                                      .itemId
                                                                      .value);
                                                            }
                                                          }, onTapImgPlus: () {
                                                            PostLineItemsReq
                                                                postLineItemsReq =
                                                                PostLineItemsReq(
                                                                    quantity: int.parse(model
                                                                            .qtyTxt
                                                                            .toString()) +
                                                                        1);
                                                            controller.callCreateLineItems(
                                                                postLineItemsReq
                                                                    .toJson(),
                                                                successCall:
                                                                    _onCreateLineItemsSuccess,
                                                                errCall:
                                                                    _onCreateLineItemsError,
                                                                cartId: Get.find<
                                                                        PrefUtils>()
                                                                    .getCartId(),
                                                                lineItems: model
                                                                    .itemId
                                                                    .value);
                                                          });
                                                        })))),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            margin: getMargin(top: 98),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray200)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 23,
                                                    right: 16),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 3,
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_total"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtLatoSemiBold14
                                                                  .copyWith())),
                                                      Obx(() => Text(
                                                          controller
                                                              .cartModelObj
                                                              .value
                                                              .priceTwoTxt
                                                              .value,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLatoRegular18
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      1.08)))
                                                    ]))),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            margin: getMargin(top: 23),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray200)),
                                        CustomButton(
                                            width: 326,
                                            text:
                                                "Place Order".tr.toUpperCase(),
                                            margin: getMargin(
                                                left: 16, top: 10, right: 16),
                                            onTap: onTapBtnPay,
                                            alignment: Alignment.center)
                                      ]))
                            ]))))));
  }

  void _onDeleteLineItemsSuccess() {
    List<CartItemModel> cartItemModelList = [];
    Get.delete<CartItemModel>();
    Get.put(CartItemModel());
    if (controller.deleteLineItemsResp!.cart!.items! != null &&
        controller.deleteLineItemsResp!.cart!.items!.isNotEmpty) {
      for (var element in controller.deleteLineItemsResp!.cart!.items!) {
        var cartItemModel = CartItemModel();
        cartItemModel.cartProductTxt.value = element.title!.toString();
        cartItemModel.productImg.value = element.thumbnail!.toString();
        cartItemModel.priceTxt.value = element.unitPrice!.toString();
        cartItemModel.itemId.value = element.id.toString();
        cartItemModelList.add(cartItemModel);
      }
    }
    controller.cartModelObj.value.cartItemList.value = cartItemModelList;
    controller.cartModelObj.value.priceTwoTxt.value =
        controller.deleteLineItemsResp.cart!.subtotal!.toString();
    Fluttertoast.showToast(msg: "Item removed from cart!");
  }

  void _onDeleteLineItemsError() {
    Fluttertoast.showToast(msg: "Something went wrong!");
  }

  void _onCreateLineItemsSuccess() {
    List<CartItemModel> cartItemModelList = [];
    Get.delete<CartController>();
    Get.put(CartController());
    if (controller.postLineItemsResp!.cart!.items! != null &&
        controller.postLineItemsResp!.cart!.items!.isNotEmpty) {
      for (var element in controller.postLineItemsResp!.cart!.items!) {
        var cartItemModel = CartItemModel();
        cartItemModel.cartProductTxt.value = element.title!.toString();
        cartItemModel.productImg.value = element.thumbnail!.toString();
        cartItemModel.priceTxt.value = element.unitPrice!.toString();
        cartItemModel.qtyTxt.value = element.quantity!.toString();
        cartItemModel.itemId.value = element.id!.toString();

        cartItemModelList.add(cartItemModel);
      }
    }
    controller.cartModelObj.value.cartItemList.value = cartItemModelList;
    controller.cartModelObj.value.priceTwoTxt.value =
        controller.postLineItemsResp.cart!.subtotal!.toString();
    Fluttertoast.showToast(msg: "Quantity updated!");
  }

  void _onCreateLineItemsError() {
    Fluttertoast.showToast(msg: "Something went wrong!");
  }

  void onTapImgPlus() {
    PostLineItemsReq postLineItemsReq = PostLineItemsReq(quantity: Shopsie.qty);
    controller.callCreateLineItems(postLineItemsReq.toJson(),
        successCall: _onCreateLineItemsSuccess,
        errCall: _onCreateLineItemsError,
        cartId: Get.find<PrefUtils>().getCartId(),
        lineItems: Shopsie.item);
  }

  onTapImgArrowleft() {
    Get.offAndToNamed(AppRoutes.productDiscoverScreen);

    // Get.back();
  }

  void onTapBtnPay() {
    if (controller.cartModelObj.value.cartItemList.length > 0) {
      PostPaymentSessionsReq postPaymentSessionsReq = PostPaymentSessionsReq();
      controller.callCreatePaymentSessions(
        postPaymentSessionsReq.toJson(),
        successCall: _onCreatePaymentSessionsSuccess,
        errCall: _onCreatePaymentSessionsError,
        cartId: Get.find<PrefUtils>().getCartId(),
      );
    } else {
      Fluttertoast.showToast(
        msg: "Cart is empty!",
      );
    }
  }

  void _onCreatePaymentSessionsSuccess() {
    PostCompleteReq postCompleteReq = PostCompleteReq();
    controller.callCreateComplete(
      postCompleteReq.toJson(),
      successCall: _onCreateCompleteSuccess,
      errCall: _onCreateCompleteError,
      cartId: Get.find<PrefUtils>().getCartId(),
    );
  }

  void _onCreateCompleteSuccess() {
    PostCartsReq postCartsReq = PostCartsReq(
      regionId: Shopsie.region,
    );
    controller.callCreateCarts(
      postCartsReq.toJson(),
      successCall: _onCreateCartsSuccess,
      errCall: _onCreateCartsError,
    );
  }

  void _onCreateCompleteError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  void _onCreatePaymentSessionsError() {}

  void _onCreateCartsSuccess() {
    Fluttertoast.showToast(
      msg: "Order placed!",
    );
    Get.find<PrefUtils>()
        .setCartId(controller.postCartsResp.cart!.id!.toString());

    Get.offNamed(AppRoutes.productDiscoverScreen);
  }

  void _onCreateCartsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
