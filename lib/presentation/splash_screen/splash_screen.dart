import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Padding(
                          padding: getPadding(left: 101, top: 266, right: 101),
                          child: Text("lbl_shopsie".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlayfairDisplayRomanBold48
                                  .copyWith())),
                      Padding(
                          padding: getPadding(
                              left: 101, top: 60, right: 101, bottom: 20),
                          child: Text("msg_the_best_way_to".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtLatoRegular14Gray600.copyWith()))
                    ]))))));
  }
}
