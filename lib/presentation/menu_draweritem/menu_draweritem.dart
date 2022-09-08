import 'controller/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MenuDraweritem extends StatelessWidget {
  MenuDraweritem(this.controller);

  MenuController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: double.infinity,
                  decoration: AppDecoration.fillBlack90090,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: double.infinity,
                                margin: getMargin(right: 80),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              width: double.infinity,
                                              margin: getMargin(top: 43),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    InkWell(
                                                        onTap: () {
                                                          onTapTxtCart();
                                                        },
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 105,
                                                                top: 4,
                                                                right: 105),
                                                            child: Text(
                                                                "lbl_cart"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtLatoRegular18
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            1.08)))),
                                                    InkWell(
                                                        onTap: () {
                                                          onTapTxtProfile();
                                                        },
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 105,
                                                                top: 29,
                                                                right: 105),
                                                            child: Text(
                                                                "lbl_profile"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtLatoRegular18
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            1.08)))),
                                                    InkWell(
                                                        onTap: () {
                                                          onTapTxtClothing();
                                                        },
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 105,
                                                                top: 29,
                                                                right: 105),
                                                            child: Text(
                                                                "lbl_clothing"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtLatoRegular18
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            1.08)))),

                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 58,
                                                  top: 540,
                                                  right: 58,
                                                  bottom: 64),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                  InkWell(
                                                      onTap: () {
                                                   onTapImgInsta();
                                                   },
                                              child:    Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgEye,
                                                            height:
                                                                getSize(26.00),
                                                            width: getSize(
                                                                26.00)))),
                                                    InkWell(
                                                        onTap: () {
                                                          onTapImgFacebook();
                                                        },
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 24,
                                                                bottom: 1),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFacebook,
                                                                height: getSize(
                                                                    26.00),
                                                                width: getSize(
                                                                    26.00)))),
                                          InkWell(
                                              onTap: () {
                                                onTapImgPrintrest();
                                              },
                                                child:Padding(
                                                        padding: getPadding(
                                                            left: 24, top: 1),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgSettings,
                                                            height:
                                                                getSize(26.00),
                                                            width: getSize(
                                                                26.00)))),
                                          InkWell(
                                              onTap: () {
                                                onTapImgTwitter();
                                              },
                                                 child:Padding(
                                                        padding: getPadding(
                                                            left: 24,
                                                            bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgVector,
                                                            height:
                                                                getSize(26.00),
                                                            width:
                                                                getSize(26.00))))
                                                  ])))
                                    ])))
                      ])))
        ]));
  }

  onTapTxtCart() {
    Get.toNamed(AppRoutes.cartScreen);
  }

  onTapTxtProfile() {
    Get.toNamed(AppRoutes.profileTabScreen);
  }

  onTapTxtClothing() {
    Get.toNamed(AppRoutes.productDiscoverScreen);
  }

  onTapImgFacebook() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapImgInsta() async {
    var url = 'https://www.instagram.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapImgPrintrest() async {
    var url = 'https://in.pinterest.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapImgTwitter() async {
    var url = 'https://twitter.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

}
