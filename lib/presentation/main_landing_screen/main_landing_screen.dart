import '../main_landing_screen/widgets/listprice_two_item_widget.dart';
import '../main_landing_screen/widgets/listproduct_item_widget.dart';
import '../menu_draweritem/controller/menu_controller.dart';
import '../menu_draweritem/menu_draweritem.dart';
import 'controller/main_landing_controller.dart';
import 'models/listprice_two_item_model.dart';
import 'models/listproduct_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';
import 'package:shopsie/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class MainLandingScreen extends GetWidget<MainLandingController> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: ColorConstant.whiteA700,
            drawer: MenuDraweritem(MenuController(),),
            body: Container(
                margin: getMargin(),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: size.width,
                          decoration:
                          BoxDecoration(color: ColorConstant.whiteA700),
                          child: Padding(
                              padding: getPadding(
                                  left: 19, top: 22, right: 19, bottom: 23),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgMenu();
                                        },
                                        child: Padding(
                                            padding:
                                            getPadding(top: 10, bottom: 10,right:10),
                                            child: CommonImageView(
                                                svgPath: ImageConstant.imgMenu,
                                                height: getVerticalSize(13.00),
                                                width:
                                                getHorizontalSize(18.00)))),
                                    Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding:
                                              getPadding(top: 2, bottom: 1),
                                              child: CommonImageView(
                                                  svgPath:
                                                  ImageConstant.imgSignal,
                                                  height:
                                                  getVerticalSize(14.00),
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
                                                      height: getSize(15.00),
                                                      width: getSize(15.00)))),
                                          InkWell(
                                              onTap: () {
                                                onTapImgCart();
                                              },
                                              child: Padding(
                                                  padding: getPadding(left: 23),
                                                  child: CommonImageView(
                                                      svgPath:
                                                      ImageConstant.imgCart,
                                                      height: getVerticalSize(
                                                          17.00),
                                                      width: getHorizontalSize(
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
                                                      ImageConstant.imgUser,
                                                      height: getVerticalSize(
                                                          15.00),
                                                      width: getHorizontalSize(
                                                          13.00))))
                                        ])
                                  ]))),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
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
                                                width: double.infinity,
                                                decoration: AppDecoration
                                                    .fillGray200,
                                                child: Column(
                                                    mainAxisSize: MainAxisSize
                                                        .min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                          height: getVerticalSize(
                                                              318.00),
                                                          width: getHorizontalSize(
                                                              278.00),
                                                          margin: getMargin(
                                                              left: 51,
                                                              top: 58,
                                                              right: 51),
                                                          child: Stack(
                                                              alignment:
                                                              Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                Align(
                                                                    alignment: Alignment
                                                                        .centerLeft,
                                                                    child: InkWell(
                                                                        onTap: () {
                                                                          onTapImgImageMain();
                                                                        },
                                                                        child: ClipRRect(
                                                                            borderRadius: BorderRadius
                                                                                .only(
                                                                                topLeft: Radius
                                                                                    .circular(
                                                                                    getHorizontalSize(
                                                                                        200.00)),
                                                                                topRight: Radius
                                                                                    .circular(
                                                                                    getHorizontalSize(
                                                                                        200.00))),
                                                                            child: CommonImageView(
                                                                                imagePath:
                                                                                ImageConstant
                                                                                    .imgImagemain,
                                                                                height: getVerticalSize(
                                                                                    318.00),
                                                                                width: getHorizontalSize(
                                                                                    278.00))))),
                                                                Align(
                                                                    alignment: Alignment
                                                                        .bottomCenter,
                                                                    child: Container(
                                                                        margin: getMargin(
                                                                            left: 6,
                                                                            top: 27,
                                                                            right: 3,
                                                                            bottom: 27),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                            children: [
                                                                              Align(
                                                                                  alignment:
                                                                                  Alignment
                                                                                      .centerLeft,
                                                                                  child: Text(
                                                                                      "lbl_season_sale"
                                                                                          .tr
                                                                                          .toUpperCase(),
                                                                                      overflow: TextOverflow
                                                                                          .ellipsis,
                                                                                      textAlign: TextAlign
                                                                                          .left,
                                                                                      style: AppStyle
                                                                                          .txtPlayfairDisplayRomanRegular48
                                                                                          .copyWith())),
                                                                              Align(
                                                                                  alignment:
                                                                                  Alignment
                                                                                      .centerRight,
                                                                                  child: Container(
                                                                                      margin: getMargin(
                                                                                          left: 34,
                                                                                          top: 15,
                                                                                          right: 34),
                                                                                      child: RichText(
                                                                                          text: TextSpan(
                                                                                              children: [
                                                                                                TextSpan(
                                                                                                    text: "lbl_up_to"
                                                                                                        .tr
                                                                                                        .toUpperCase(),
                                                                                                    style: TextStyle(
                                                                                                        color: ColorConstant
                                                                                                            .whiteA7007f,
                                                                                                        fontSize: getFontSize(
                                                                                                            24),
                                                                                                        fontFamily: 'Lato',
                                                                                                        fontWeight: FontWeight
                                                                                                            .w500)),
                                                                                                TextSpan(
                                                                                                    text: ' ',
                                                                                                    style: TextStyle(
                                                                                                        color: ColorConstant
                                                                                                            .gray900,
                                                                                                        fontSize: getFontSize(
                                                                                                            24),
                                                                                                        fontFamily: 'Lato',
                                                                                                        fontWeight: FontWeight
                                                                                                            .w500)),
                                                                                                TextSpan(
                                                                                                    text: "lbl_60_off"
                                                                                                        .tr
                                                                                                        .toUpperCase(),
                                                                                                    style: TextStyle(
                                                                                                        color: ColorConstant
                                                                                                            .gray200,
                                                                                                        fontSize: getFontSize(
                                                                                                            24),
                                                                                                        fontFamily: 'Lato',
                                                                                                        fontWeight: FontWeight
                                                                                                            .w500))
                                                                                              ]),
                                                                                          textAlign: TextAlign
                                                                                              .left)))
                                                                            ])))
                                                              ])),
                                                      Container(
                                                          height: getVerticalSize(
                                                              48.00),
                                                          width: getHorizontalSize(
                                                              134.00),
                                                          margin: getMargin(
                                                              left: 51,
                                                              top: 42,
                                                              right: 51),
                                                          child: Stack(
                                                              alignment:
                                                              Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                Align(
                                                                    alignment: Alignment
                                                                        .centerLeft,
                                                                    child: InkWell(
                                                                        onTap: () {
                                                                          onTapShopNowBtn();
                                                                        },
                                                                        child: Container(
                                                                            height:
                                                                            getVerticalSize(
                                                                                48.00),
                                                                            width:
                                                                            getHorizontalSize(
                                                                                134.00),
                                                                            decoration: BoxDecoration(
                                                                                borderRadius:
                                                                                BorderRadius
                                                                                    .circular(
                                                                                    getHorizontalSize(
                                                                                        67.00)),
                                                                                border: Border
                                                                                    .all(
                                                                                    color: ColorConstant
                                                                                        .gray900,
                                                                                    width: getHorizontalSize(
                                                                                        0.50)))))),
                                                                Align(
                                                                    alignment: Alignment
                                                                        .bottomCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left: 23,
                                                                            top: 11,
                                                                            right: 23,
                                                                            bottom: 11),
                                                                        child: Text(
                                                                            "lbl_shop_now"
                                                                                .tr,
                                                                            overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                            textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                            style: AppStyle
                                                                                .txtPlayfairDisplayRomanRegular20
                                                                                .copyWith())))
                                                              ])),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  top: 48),
                                                              child: CommonImageView(
                                                                  imagePath: ImageConstant
                                                                      .imgImagetwo,
                                                                  height: getVerticalSize(
                                                                      123.00),
                                                                  width: getHorizontalSize(
                                                                      390.00))))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                margin: getMargin(
                                                    left: 10, top: 68),
                                                child: Column(
                                                    mainAxisSize: MainAxisSize
                                                        .min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  left: 99,
                                                                  right: 99),
                                                              child: Text(
                                                                  "lbl_trending_now"
                                                                      .tr
                                                                      .toUpperCase(),
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign: TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtLatoRegular18
                                                                      .copyWith(
                                                                      letterSpacing:
                                                                      1.08)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  top: 36),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Container(
                                                                        padding: getPadding(
                                                                            left: 16,
                                                                            top: 9,
                                                                            right: 16,
                                                                            bottom: 9),
                                                                        decoration: AppDecoration
                                                                            .txtFillIndigoA200
                                                                            .copyWith(
                                                                            borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder8),
                                                                        child: Text(
                                                                            "lbl_all"
                                                                                .tr,
                                                                            overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                            textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                            style: AppStyle
                                                                                .txtLatoRegular13WhiteA700
                                                                                .copyWith(
                                                                                letterSpacing:
                                                                                0.39))),
                                                                    Container(
                                                                        padding: getPadding(
                                                                            left: 16,
                                                                            top: 9,
                                                                            right: 16,
                                                                            bottom: 9),
                                                                        decoration: AppDecoration
                                                                            .txtFillGray200
                                                                            .copyWith(
                                                                            borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder8),
                                                                        child: Text(
                                                                            "lbl_dresses"
                                                                                .tr,
                                                                            overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                            textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                            style: AppStyle
                                                                                .txtLatoRegular13
                                                                                .copyWith(
                                                                                letterSpacing:
                                                                                0.39))),
                                                                    Container(
                                                                        padding: getPadding(
                                                                            left: 5,
                                                                            top: 11,
                                                                            right: 4,
                                                                            bottom: 6),
                                                                        decoration: AppDecoration
                                                                            .txtFillGray200
                                                                            .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .txtRoundedBorder8),
                                                                        child: Text(
                                                                            "lbl_jewellery"
                                                                                .tr,
                                                                            overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                            textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                            style: AppStyle
                                                                                .txtLatoRegular13
                                                                                .copyWith(
                                                                                letterSpacing:
                                                                                0.39))),
                                                                    Container(
                                                                        padding: getPadding(
                                                                            left: 16,
                                                                            top: 9,
                                                                            right: 16,
                                                                            bottom: 9),
                                                                        decoration: AppDecoration
                                                                            .txtFillGray200
                                                                            .copyWith(
                                                                            borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder8),
                                                                        child: Text(
                                                                            "lbl_shoes2"
                                                                                .tr,
                                                                            overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                            textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                            style: AppStyle
                                                                                .txtLatoRegular13
                                                                                .copyWith(
                                                                                letterSpacing:
                                                                                0.39))),
                                                                    Container(
                                                                        padding: getPadding(
                                                                            top: 9,
                                                                            bottom: 9),
                                                                        decoration: AppDecoration
                                                                            .txtFillGray200
                                                                            .copyWith(
                                                                            borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder8),
                                                                        child: Text(
                                                                            "lbl_accessories"
                                                                                .tr,
                                                                            overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                            textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                            style: AppStyle
                                                                                .txtLatoRegular13
                                                                                .copyWith(
                                                                                letterSpacing:
                                                                                0.39)))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                              getVerticalSize(
                                                                  320.00),
                                                              width:
                                                              getHorizontalSize(
                                                                  358.00),
                                                              child: Obx(() =>
                                                                  ListView
                                                                      .builder(
                                                                      padding: getPadding(
                                                                          top: 32,
                                                                          right: 10),
                                                                      scrollDirection:
                                                                      Axis
                                                                          .horizontal,
                                                                      physics:
                                                                      BouncingScrollPhysics(),
                                                                      itemCount: controller
                                                                          .mainLandingModelObj
                                                                          .value
                                                                          .listproductItemList
                                                                          .length,
                                                                      itemBuilder:
                                                                          (
                                                                          context,
                                                                          index) {
                                                                        ListproductItemModel
                                                                        model =
                                                                        controller
                                                                            .mainLandingModelObj
                                                                            .value
                                                                            .listproductItemList[index];
                                                                        return ListproductItemWidget(
                                                                            model);
                                                                      }))))
                                                    ]))),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 87,
                                                right: 16),
                                            child: Text(
                                                "msg_actual_categori".tr
                                                    .toUpperCase(),
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtLatoRegular18
                                                    .copyWith(
                                                    letterSpacing: 1.08))),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 36,
                                                right: 16),
                                            child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgImagethree,
                                                height: getVerticalSize(386.00),
                                                width: getHorizontalSize(
                                                    358.00))),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 27,
                                                right: 16),
                                            child: Text("lbl_outerwear".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtLatoBold15
                                                    .copyWith())),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 12,
                                                right: 16),
                                            child: Text("msg_raincoats_swea".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                AppStyle.txtLatoRegular12
                                                    .copyWith())),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 24,
                                                right: 16),
                                            child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgImagefour,
                                                height: getVerticalSize(386.00),
                                                width: getHorizontalSize(
                                                    358.00))),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 27,
                                                right: 16),
                                            child: Text("lbl_leather_shoes".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtLatoBold15
                                                    .copyWith())),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 12,
                                                right: 16),
                                            child: Text("msg_shoes_sandals".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                AppStyle.txtLatoRegular12
                                                    .copyWith())),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 24,
                                                right: 16),
                                            child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgImagefive,
                                                height: getVerticalSize(386.00),
                                                width: getHorizontalSize(
                                                    358.00))),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 27,
                                                right: 16),
                                            child: Text("lbl_light_dresses".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtLatoBold15
                                                    .copyWith())),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 12,
                                                right: 16),
                                            child: Text("msg_evening_casual".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                AppStyle.txtLatoRegular12
                                                    .copyWith())),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 64,
                                                right: 16),
                                            child: Text(
                                                "msg_only_trusted_br".tr
                                                    .toUpperCase(),
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtLatoRegular18
                                                    .copyWith(
                                                    letterSpacing: 1.08))),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 49,
                                                right: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgBrandone,
                                                      height: getVerticalSize(
                                                          58.00),
                                                      width: getHorizontalSize(
                                                          79.00)),
                                                  Padding(
                                                      padding:
                                                      getPadding(
                                                          top: 8, bottom: 8),
                                                      child: CommonImageView(
                                                          imagePath:
                                                          ImageConstant
                                                              .imgBrandtwo,
                                                          height: getVerticalSize(
                                                              42.00),
                                                          width: getHorizontalSize(
                                                              36.00))),
                                                  Padding(
                                                      padding:
                                                      getPadding(
                                                          top: 9, bottom: 9),
                                                      child: CommonImageView(
                                                          imagePath:
                                                          ImageConstant
                                                              .imgBrandthree,
                                                          height: getSize(
                                                              40.00),
                                                          width: getSize(
                                                              40.00))),
                                                  Padding(
                                                      padding:
                                                      getPadding(
                                                          top: 9, bottom: 10),
                                                      child: CommonImageView(
                                                          imagePath:
                                                          ImageConstant
                                                              .imgBrandfour,
                                                          height: getVerticalSize(
                                                              39.00),
                                                          width: getHorizontalSize(
                                                              52.00)))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: double.infinity,
                                                margin: getMargin(top: 62),
                                                decoration: AppDecoration
                                                    .fillBlack901,
                                                child: Column(
                                                    mainAxisSize: MainAxisSize
                                                        .min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 19,
                                                              top: 52,
                                                              right: 19),
                                                          child: Text(
                                                              "lbl_new_arrival"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtPlayfairDisplayRomanRegular60
                                                                  .copyWith(
                                                                  letterSpacing:
                                                                  8.40))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 19,
                                                              top: 19,
                                                              right: 19),
                                                          child: Text(
                                                              "lbl_fall_2021"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtLatoSemiBold14Bluegray101
                                                                  .copyWith())),
                                                      Container(
                                                          width: double
                                                              .infinity,
                                                          margin: getMargin(
                                                              left: 19,
                                                              top: 39,
                                                              right: 19),
                                                          decoration: AppDecoration
                                                              .outlineBluegray10063
                                                              .copyWith(
                                                              borderRadius:
                                                              BorderRadiusStyle
                                                                  .customBorderTL279),
                                                          child: Column(
                                                              mainAxisSize:
                                                              MainAxisSize.min,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Container(
                                                                    height: getVerticalSize(
                                                                        362.00),
                                                                    width: getHorizontalSize(
                                                                        312.00),
                                                                    margin: getMargin(
                                                                        left: 18,
                                                                        top: 15,
                                                                        right: 18),
                                                                    child: Card(
                                                                        clipBehavior:
                                                                        Clip
                                                                            .antiAlias,
                                                                        elevation: 0,
                                                                        margin: EdgeInsets
                                                                            .all(
                                                                            0),
                                                                        shape: RoundedRectangleBorder(
                                                                            side: BorderSide(
                                                                                color: ColorConstant
                                                                                    .bluegray10075,
                                                                                width: getHorizontalSize(
                                                                                    1.00)),
                                                                            borderRadius: BorderRadius
                                                                                .only(
                                                                                topLeft: Radius
                                                                                    .circular(
                                                                                    getHorizontalSize(
                                                                                        279.50)),
                                                                                topRight: Radius
                                                                                    .circular(
                                                                                    getHorizontalSize(
                                                                                        279.50)))),
                                                                        child: Stack(
                                                                            children: [
                                                                              Align(
                                                                                  alignment:
                                                                                  Alignment
                                                                                      .center,
                                                                                  child: Padding(
                                                                                      padding: getPadding(
                                                                                          left:
                                                                                          10,
                                                                                          top:
                                                                                          8,
                                                                                          right:
                                                                                          10),
                                                                                      child: ClipRRect(
                                                                                          borderRadius: BorderRadius
                                                                                              .only(
                                                                                              topLeft: Radius
                                                                                                  .circular(
                                                                                                  getHorizontalSize(
                                                                                                      279.50)),
                                                                                              topRight: Radius
                                                                                                  .circular(
                                                                                                  getHorizontalSize(
                                                                                                      279.50))),
                                                                                          child: CommonImageView(
                                                                                              imagePath: ImageConstant
                                                                                                  .imgImagesix,
                                                                                              height: getVerticalSize(
                                                                                                  354.00),
                                                                                              width: getHorizontalSize(
                                                                                                  292.00)))))
                                                                            ])))
                                                              ])),
                                                      CustomButton(
                                                          width: 174,
                                                          text: "lbl_explore"
                                                              .tr
                                                              .toUpperCase(),
                                                          margin: getMargin(
                                                              left: 19,
                                                              top: 40,
                                                              right: 19,
                                                              bottom: 40),
                                                          variant:
                                                          ButtonVariant
                                                              .FillWhiteA700,
                                                          fontStyle: ButtonFontStyle
                                                              .LatoSemiBold13IndigoA200)
                                                    ]))),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 68,
                                                right: 16),
                                            child: Text(
                                                "msg_recomended_look".tr
                                                    .toUpperCase(),
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtLatoRegular18
                                                    .copyWith(
                                                    letterSpacing: 1.08))),
                                        Container(
                                            width: double.infinity,
                                            margin: getMargin(left: 16,
                                                top: 89,
                                                right: 16),
                                            decoration: AppDecoration
                                                .outlineGray20012,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: CommonImageView(
                                                          imagePath:
                                                          ImageConstant
                                                              .imgImageseven,
                                                          height: getVerticalSize(
                                                              428.00),
                                                          width:
                                                          getHorizontalSize(
                                                              358.00))),
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 29,
                                                              right: 16),
                                                          child: Text(
                                                              "lbl_in_this_look"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtLatoSemiBold14
                                                                  .copyWith()))),
                                                  Container(
                                                      width: double.infinity,
                                                      margin: getMargin(
                                                          left: 16,
                                                          top: 14,
                                                          right: 16),
                                                      decoration:
                                                      AppDecoration
                                                          .fillWhiteA700,
                                                      child: Column(
                                                          mainAxisSize: MainAxisSize
                                                              .min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Padding(
                                                                padding: getPadding(
                                                                    left: 34,
                                                                    top: 17,
                                                                    right: 34,
                                                                    bottom: 4),
                                                                child: Obx(() =>
                                                                    ListView
                                                                        .separated(
                                                                        physics:
                                                                        NeverScrollableScrollPhysics(),
                                                                        shrinkWrap: true,
                                                                        separatorBuilder:
                                                                            (
                                                                            context,
                                                                            index) {
                                                                          return Container(
                                                                              height:
                                                                              getVerticalSize(
                                                                                  1.00),
                                                                              width:
                                                                              getHorizontalSize(
                                                                                  247.00),
                                                                              decoration:
                                                                              BoxDecoration(
                                                                                  color:
                                                                                  ColorConstant
                                                                                      .gray200));
                                                                        },
                                                                        itemCount: controller
                                                                            .mainLandingModelObj
                                                                            .value
                                                                            .listpriceTwoItemList
                                                                            .length,
                                                                        itemBuilder:
                                                                            (
                                                                            context,
                                                                            index) {
                                                                          ListpriceTwoItemModel
                                                                          model =
                                                                          controller
                                                                              .mainLandingModelObj
                                                                              .value
                                                                              .listpriceTwoItemList[index];
                                                                          return ListpriceTwoItemWidget(
                                                                              model);
                                                                        })))
                                                          ])),
                                                  CustomButton(
                                                      width: 326,
                                                      text:
                                                      "lbl_buy_it_now".tr
                                                          .toUpperCase(),
                                                      margin: getMargin(
                                                          left: 16,
                                                          top: 3,
                                                          right: 16,
                                                          bottom: 9),
                                                      variant:
                                                      ButtonVariant
                                                          .OutlineIndigoA200,
                                                      fontStyle: ButtonFontStyle
                                                          .LatoSemiBold13IndigoA200)
                                                ])),
                                        Padding(
                                            padding:
                                            getPadding(left: 16,
                                                top: 51,
                                                right: 16),
                                            child: CommonImageView(
                                                svgPath: ImageConstant.imgClock,
                                                height: getVerticalSize(14.00),
                                                width: getHorizontalSize(
                                                    59.00))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: double.infinity,
                                                margin: getMargin(top: 36),
                                                decoration: AppDecoration
                                                    .fillBlue50,
                                                child: Column(
                                                    mainAxisSize: MainAxisSize
                                                        .min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 40,
                                                              right: 16),
                                                          child: ClipRRect(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  getHorizontalSize(
                                                                      12.00)),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgImageeight,
                                                                  height: getVerticalSize(
                                                                      204.00),
                                                                  width: getHorizontalSize(
                                                                      231.00)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 44,
                                                              right: 16),
                                                          child: Text(
                                                              "lbl_get_20_off"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtLatoRegular18
                                                                  .copyWith(
                                                                  letterSpacing:
                                                                  1.08))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 19,
                                                              right: 16),
                                                          child: Text(
                                                              "msg_leave_your_emai"
                                                                  .tr,
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtLatoRegular14Gray604
                                                                  .copyWith())),
                                                      Container(
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 28,
                                                              right: 16,
                                                              bottom: 32),
                                                          decoration: AppDecoration
                                                              .fillWhiteA700ab
                                                              .copyWith(
                                                              borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
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
                                                                        left: 16,
                                                                        top: 15,
                                                                        bottom: 11),
                                                                    child: Text(
                                                                        "lbl_email"
                                                                            .tr,
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: AppStyle
                                                                            .txtLatoMedium13Bluegray401
                                                                            .copyWith())),
                                                                CustomButton(
                                                                    width: 114,
                                                                    text:
                                                                    "lbl_subscribe"
                                                                        .tr,
                                                                    padding: ButtonPadding
                                                                        .PaddingAll13,
                                                                    fontStyle:
                                                                    ButtonFontStyle
                                                                        .LatoMedium13)
                                                              ]))
                                                    ]))),
                                        Container(
                                            margin: getMargin(left: 4, top: 2),
                                            decoration: AppDecoration
                                                .fillGray900,
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 12,
                                                          top: 26,
                                                          bottom: 26),
                                                      child: Text(
                                                          "lbl_2021_shopsie".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          style: AppStyle
                                                              .txtLatoRegular12Gray600
                                                              .copyWith())),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 25,
                                                          right: 22,
                                                          bottom: 26),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          mainAxisSize: MainAxisSize
                                                              .min,
                                                          children: [
                                                            Padding(
                                                                padding: getPadding(
                                                                    top: 1),
                                                                child: Text(
                                                                    "msg_privacy_cooki"
                                                                        .tr,
                                                                    overflow: TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtLatoRegular12Gray200
                                                                        .copyWith())),
                                                            Padding(
                                                                padding: getPadding(
                                                                    left: 32,
                                                                    bottom: 2),
                                                                child: Text(
                                                                    "lbl_ts_cs"
                                                                        .tr,
                                                                    overflow: TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtLatoRegular12Gray200
                                                                        .copyWith()))
                                                          ]))
                                                ]))
                                      ]))))
                    ]))));
  }

  onTapImgMenu() {
    _scaffoldKey.currentState?.openDrawer();
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

  onTapImgImageMain() {
    Get.toNamed(AppRoutes.productDiscoverScreen);
  }

  onTapShopNowBtn() {
    Get.toNamed(AppRoutes.productDiscoverScreen);
  }
}
