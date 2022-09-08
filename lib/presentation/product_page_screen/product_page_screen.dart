import 'controller/product_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';
import 'package:shopsie/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shopsie/data/models/cartIdLineItems/post_cart_id_line_items_req.dart';
import 'package:shopsie/core/constants/shopsie.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductPageScreen extends GetWidget<ProductPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(bottom: 8),
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
                                          left: 21,
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
                                                        top: 2, bottom: 1),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleft,
                                                        height: getSize(14.00),
                                                        width:
                                                            getSize(14.00)))),
                                            Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 2, bottom: 1),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgSignal,
                                                          height:
                                                              getVerticalSize(
                                                                  14.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  48.00))),
                                                  InkWell(
                                                      onTap: () {
                                                        onTapImgSearch();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 57,
                                                              top: 1,
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSearch,
                                                              height: getSize(
                                                                  15.00),
                                                              width: getSize(
                                                                  15.00)))),
                                                  InkWell(
                                                      onTap: () {
                                                        onTapImgCart();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 23),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgCart,
                                                              height:
                                                                  getVerticalSize(
                                                                      17.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      18.00)))),
                                                  InkWell(
                                                      onTap: () {
                                                        onTapImgUser();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 1,
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgUser,
                                                              height:
                                                                  getVerticalSize(
                                                                      15.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      13.00))))
                                                ])
                                          ]))),
                              Container(
                                  width: double.infinity,
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(436.00),
                                                width: size.width,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Obx(() => CommonImageView(
                                                              url: controller
                                                                  .productPageModelObj
                                                                  .value
                                                                  .productImageImg
                                                                  .value,
                                                              height:
                                                                  getVerticalSize(
                                                                      436.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      390.00)))),
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 30,
                                                    right: 16),
                                                child: Obx(() => Text(
                                                    controller
                                                        .productPageModelObj
                                                        .value
                                                        .productTitleTxt
                                                        .value,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtLatoRegular24
                                                        .copyWith(
                                                            letterSpacing: 0.72,
                                                            height: 1.00))))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 20,
                                                    right: 16),
                                                child: Obx(() => Text(
                                                    controller
                                                        .productPageModelObj
                                                        .value
                                                        .priceTxt
                                                        .value
                                                        .tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtLatoMedium20
                                                        .copyWith())))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 33,
                                                    right: 16),
                                                child: Text(
                                                    "lbl_product_details"
                                                        .tr
                                                        .toUpperCase(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtLatoSemiBold14
                                                        .copyWith()))),
                                        Container(
                                            width: getHorizontalSize(358.00),
                                            margin: getMargin(
                                                left: 16, top: 21, right: 16),
                                            child: Obx(() => Text(
                                                controller.productPageModelObj
                                                    .value.descriptionTxt.value,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtLatoRegular14
                                                    .copyWith()))),
                                        CustomButton(
                                            width: 358,
                                            text: "lbl_add_to_cart"
                                                .tr
                                                .toUpperCase(),
                                            margin: getMargin(
                                                left: 16, top: 24, right: 16),
                                            onTap: onTapBtnAddtocart)
                                      ]))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapImgSearch() {
    Get.toNamed(AppRoutes.productSearchScreen);
  }

  onTapImgCart() {
    Get.toNamed(AppRoutes.cartScreen);
  }

  onTapImgUser() {
    Get.toNamed(AppRoutes.profileTabScreen);
  }

  void onTapBtnAddtocart() {
    PostCartIdLineItemsReq postCartIdLineItemsReq = PostCartIdLineItemsReq(
      variantId: controller.productPageModelObj.value.variantIdTxt.value,
      quantity: Shopsie.qty,
    );
    controller.callCreateCartIdLineItems(
      postCartIdLineItemsReq.toJson(),
      successCall: _onCreateCartIdLineItemsSuccess,
      errCall: _onCreateCartIdLineItemsError,
      cartId: Get.find<PrefUtils>().getCartId(),
    );
    Fluttertoast.showToast(msg: "Added into cart!");
  }

  void _onCreateCartIdLineItemsSuccess() {}
  void _onCreateCartIdLineItemsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
