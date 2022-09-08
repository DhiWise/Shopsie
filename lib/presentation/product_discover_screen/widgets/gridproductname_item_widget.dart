import '../controller/product_discover_controller.dart';
import '../models/gridproductname_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';

// ignore: must_be_immutable
class GridproductnameItemWidget extends StatelessWidget {
  GridproductnameItemWidget(this.gridproductnameItemModelObj,
      {this.onTapColumnproductname});

  GridproductnameItemModel gridproductnameItemModelObj;

  var controller = Get.find<ProductDiscoverController>();

  VoidCallback? onTapColumnproductname;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTapColumnproductname!();
      },
      child: Container(
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
              child: Obx(
                () => CommonImageView(
                  url: gridproductnameItemModelObj.imageImg.value ?? "",
                  height: getVerticalSize(
                    236.00,
                  ),
                  width: getHorizontalSize(
                    171.00,
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                158.00,
              ),
              margin: getMargin(
                top: 13,
                right: 10,
              ),
              child: Obx(
                () => Text(
                  gridproductnameItemModelObj.productNameTxt.value,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoRegular13.copyWith(
                    letterSpacing: 0.39,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 12,
                right: 10,
              ),
              child: Obx(() => Text(
                    gridproductnameItemModelObj.priceTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLatoSemiBold13IndigoA200.copyWith(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
