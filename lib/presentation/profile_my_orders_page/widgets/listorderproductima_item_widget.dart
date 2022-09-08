import '../controller/profile_my_orders_controller.dart';
import '../models/listorderproductima_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';

// ignore: must_be_immutable
class ListorderproductimaItemWidget extends StatelessWidget {
  ListorderproductimaItemWidget(this.listorderproductimaItemModelObj,
      {this.onTapOrder});

  ListorderproductimaItemModel listorderproductimaItemModelObj;

  var controller = Get.find<ProfileMyOrdersController>();

  VoidCallback? onTapOrder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapOrder!();
      },
      child: Padding(
        padding: getPadding(
          top: 15.5,
          right: 6,
          bottom: 15.5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                bottom: 1,
              ),
              child: Obx(
                () => CommonImageView(
                  url: listorderproductimaItemModelObj.orderProductImaImg.value,
                  height: getVerticalSize(
                    110.00,
                  ),
                  width: getHorizontalSize(
                    109.00,
                  ),
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 16,
                top: 4,
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
                    child: Obx(
                      () => Text(
                        listorderproductimaItemModelObj.priceTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtLatoRegular18.copyWith(
                          letterSpacing: 1.08,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 16,
                    ),
                    child: Obx(
                      () => Text(
                        listorderproductimaItemModelObj
                            .orderProductnamTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtLatoRegular14Gray900.copyWith(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 41,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: getMargin(
                            top: 1,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_qty2".tr,
                                  style: TextStyle(
                                    color: ColorConstant.gray600,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    color: ColorConstant.gray900,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            bottom: 3,
                          ),
                          child: Obx(
                            () => Text(
                              listorderproductimaItemModelObj.orderQtyTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtLatoRegular14Gray900.copyWith(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
