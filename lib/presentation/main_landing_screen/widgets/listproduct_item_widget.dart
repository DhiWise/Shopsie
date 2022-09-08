import '../controller/main_landing_controller.dart';
import '../models/listproduct_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';

// ignore: must_be_immutable
class ListproductItemWidget extends StatelessWidget {
  ListproductItemWidget(this.listproductItemModelObj);

  ListproductItemModel listproductItemModelObj;

  var controller = Get.find<MainLandingController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: getMargin(
            right: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    8.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgProduct,
                  height: getVerticalSize(
                    236.00,
                  ),
                  width: getHorizontalSize(
                    171.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                  right: 10,
                ),
                child: Text(
                  "msg_olive_plain_dre".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoRegular13.copyWith(
                    letterSpacing: 0.39,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                  right: 10,
                ),
                child: Text(
                  "lbl_20_99".tr.toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoSemiBold13IndigoA200.copyWith(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
