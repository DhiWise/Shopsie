import '../controller/product_search_controller.dart';
import '../models/product_search_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';

// ignore: must_be_immutable
class ProductSearchItemWidget extends StatelessWidget {
  ProductSearchItemWidget(this.productSearchItemModelObj,
      {this.onTapColumnproductname});

  ProductSearchItemModel productSearchItemModelObj;

  var controller = Get.find<ProductSearchController>();

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
                  url: productSearchItemModelObj.imageImg.value,
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

            ),
            Padding(
              padding: getPadding(
                top: 12,
                right: 10,
              ),
              child: Obx(
                () => Text(
                  productSearchItemModelObj.productNameTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoSemiBold13IndigoA200.copyWith(),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 12,
                right: 10,
              ),
              child: Obx(() => Text(
                productSearchItemModelObj.priceTxt.value,
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
