import 'package:shopsie/presentation/profile_logout_page/profile_logout_page.dart';
import 'package:shopsie/presentation/profile_my_orders_page/profile_my_orders_page.dart';
import 'package:shopsie/presentation/profile_profile_info_page/profile_profile_info_page.dart';
import 'package:shopsie/presentation/profile_security_page/profile_security_page.dart';

import 'controller/profile_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';
import 'package:shopsie/presentation/profile_address_details_page/profile_address_details_page.dart';
import 'package:shopsie/widgets/custom_icon_button.dart';

class ProfileTabScreen extends GetWidget<ProfileTabController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              decoration:
                                  BoxDecoration(color: ColorConstant.whiteA700),
                              child: Padding(
                                  padding: getPadding(
                                      left: 21, top: 22, right: 19, bottom: 23),
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
                                                    width: getSize(14.00)))),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 2, bottom: 1,right:135),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgSignal,
                                                      height: getVerticalSize(
                                                          14.00),
                                                      width: getHorizontalSize(
                                                          48.00))),
                                              ])
                                      ])))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.fillGray52,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: getVerticalSize(116.00),
                                        width: getHorizontalSize(100.00),
                                        margin: getMargin(
                                            left: 99, top: 32, right: 99),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          bottom: 10),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      50.00)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imageNotFound,
                                                              height: getSize(
                                                                  100.00),
                                                              width: getSize(
                                                                  100.00))))),
                                              CustomIconButton(
                                                  height: 32,
                                                  width: 32,
                                                  margin: getMargin(
                                                      left: 31,
                                                      top: 10,
                                                      right: 31),
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgVectorGray900))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 99, top: 12, right: 98),
                                        child:  Obx(() => Text(
                                            controller.profileTabModelObj.value
                                                .nameTxt.value
                                                .tr
                                                .toUpperCase(),
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLatoRegular18
                                                .copyWith(
                                                    letterSpacing: 1.08)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 99,
                                            top: 17,
                                            right: 99,
                                            bottom: 34),
                                        child:  Obx(() => Text( controller.profileTabModelObj.value
                                            .emailTxt.toString().tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtLatoRegular14Gray600
                                                .copyWith())))
                                  ]))),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 16),
                          child: TabBar(
                              controller: controller.groupTabController,
                              labelPadding:
                                  EdgeInsets.symmetric(horizontal: 10.0),
                              tabs: [
                                Tab(
                                    child: Text("lbl_profile_info".tr,
                                        style: TextStyle(fontSize: 12))),
                                Tab(
                                    child: Text("lbl_my_orders".tr,
                                        style: TextStyle(fontSize: 12))),
                                Tab(
                                    child: Text("lbl_security".tr,
                                        style: TextStyle(fontSize: 12))),
                                Tab(
                                    child: Text("lbl_address_details".tr,
                                        style: TextStyle(fontSize: 12))),
                                Tab(
                                    child: Text("lbl_log_out".tr,
                                        style: TextStyle(fontSize: 12))),
                              ],
                              labelColor: ColorConstant.gray600,
                              unselectedLabelColor: ColorConstant.gray600)),
                      Container(
                          margin: getMargin(left: 16, top: 40, right: 16),
                          height: getVerticalSize(288.00),
                          child: TabBarView(
                              //tabs:[]
                              controller: controller.groupTabController,
                              children: [
                                ProfileProfileInfoPage(),
                                ProfileMyOrdersPage(),
                                ProfileSecurityPage(),
                                ProfileAddressDetailsPage(),
                                ProfileLogoutPage(),
                              ]))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.offNamed(AppRoutes.productDiscoverScreen);
  }

  onTapImgSearch() {
    Get.toNamed(AppRoutes.productSearchScreen);
  }

  onTapImgCart() {
    Get.toNamed(AppRoutes.cartScreen);
  }
}
