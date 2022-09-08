import '../controller/main_landing_controller.dart';
import '../models/listprice_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';

// ignore: must_be_immutable
class ListpriceTwoItemWidget extends StatelessWidget {
  ListpriceTwoItemWidget(this.listpriceTwoItemModelObj);

  ListpriceTwoItemModel listpriceTwoItemModelObj;

  var controller = Get.find<MainLandingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              bottom: 12,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  22.72,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgImage56X45,
                height: getVerticalSize(
                  56.00,
                ),
                width: getHorizontalSize(
                  45.00,
                ),
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 26,
              top: 7,
              right: 77,
              bottom: 21,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 10,
                  ),
                  child: Text(
                    "lbl_43_90".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLatoMedium13Gray900.copyWith(),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 11,
                  ),
                  child: Text(
                    "msg_cotton_black_dr".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLatoRegular12Gray600.copyWith(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
