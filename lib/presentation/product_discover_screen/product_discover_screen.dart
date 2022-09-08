import '../product_discover_screen/widgets/gridproductname_item_widget.dart';
import 'controller/product_discover_controller.dart';
import 'models/gridproductname_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProductDiscoverScreen extends GetWidget<ProductDiscoverController> {
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
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              decoration:
                                  BoxDecoration(color: ColorConstant.whiteA700),
                              child: Padding(
                                  padding: getPadding(
                                      left: 19, top: 22, right: 19, bottom: 23),
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
                                                    svgPath:
                                                        ImageConstant.imgArrowleft,
                                                    height:
                                                        getVerticalSize(13.00),
                                                    width: getHorizontalSize(
                                                        18.00)))),
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
                                                      height: getVerticalSize(
                                                          14.00),
                                                      width: getHorizontalSize(
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
                                                          svgPath: ImageConstant
                                                              .imgSearch,
                                                          height:
                                                              getSize(15.00),
                                                          width:
                                                              getSize(15.00)))),
                                              InkWell(
                                                  onTap: () {
                                                    onTapImgCart();
                                                  },
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 23),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
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
                                                          svgPath: ImageConstant
                                                              .imgUser,
                                                          height:
                                                              getVerticalSize(
                                                                  15.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  13.00))))
                                            ])
                                      ])))),
                      Padding(
                          padding: getPadding(left: 16, top: 22, right: 16),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(309.00),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: getHorizontalSize(16.00),
                                      crossAxisSpacing:
                                          getHorizontalSize(16.00)),
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.productDiscoverModelObj
                                  .value.gridproductnameItemList.length,
                              itemBuilder: (context, index) {
                                GridproductnameItemModel model = controller
                                    .productDiscoverModelObj
                                    .value
                                    .gridproductnameItemList[index];
                                return GridproductnameItemWidget(model,
                                    onTapColumnproductname: () {
                                  Get.toNamed(AppRoutes.productPageScreen,
                                      arguments: {
                                        NavigationArgs.productId: controller
                                            .productDiscoverModelObj
                                            .value
                                            .gridproductnameItemList[index]!
                                            .idTxt
                                      });
                                }
                                    /*onTapColumnproductname(controller
                                            .productDiscoverModelObj
                                            .value
                                            .gridproductnameItemList[index]!
                                            .idTxt)*/
                                    );
                              })))
                    ]))))));
  }

  onTapColumnproductname(id) {
    Get.toNamed(AppRoutes.productPageScreen,
        arguments: {NavigationArgs.productId: id});
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
}
