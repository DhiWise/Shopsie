import '../controller/cart_controller.dart';
import '../models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItemModelObj,
      {this.onTapImgTrash, this.onTapImgMinus, this.onTapImgPlus});

  CartItemModel cartItemModelObj;

  var controller = Get.find<CartController>();

  VoidCallback? onTapImgTrash;

  VoidCallback? onTapImgMinus;

  VoidCallback? onTapImgPlus;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 16.0,
          right: 3,
          bottom: 16.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Obx(
              () => CommonImageView(
                url: cartItemModelObj.productImg.value,
                height: getVerticalSize(
                  110.00,
                ),
                width: getHorizontalSize(
                  109.00,
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 13,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        226.00,
                      ),
                      margin: getMargin(
                        top: 3,
                        right: 7,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                              bottom: 1,
                            ),
                            child: Obx(
                              () => Text(
                                cartItemModelObj.priceTxt.value,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoRegular18.copyWith(
                                  letterSpacing: 1.08,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              onTapImgTrash!();
                            },
                            child: Padding(
                              padding: getPadding(
                                top: 1,
                                right: 2,
                                bottom: 1,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgTrash,
                                height: getVerticalSize(
                                  16.00,
                                ),
                                width: getHorizontalSize(
                                  15.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                      right: 10,
                    ),
                    child: Obx(
                      () => Text(
                        cartItemModelObj.cartProductTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtLatoRegular14Gray900.copyWith(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 33,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: getMargin(
                            top: 7,
                            bottom: 1,
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
                        InkWell(
                          onTap: () {
                            onTapImgMinus!();
                          },
                          child: Padding(
                            padding: getPadding(
                              left: 25,
                              top: 3,
                              bottom: 3,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgComputer,
                              height: getSize(
                                18.00,
                              ),
                              width: getSize(
                                18.00,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 15,
                            top: 5,
                            bottom: 4,
                          ),
                          child: Obx(
                            () => Text(
                              cartItemModelObj.qtyTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtLatoRegular14Gray900.copyWith(),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            onTapImgPlus!();
                          },
                          child: Padding(
                            padding: getPadding(
                              left: 15,
                              top: 3,
                              bottom: 3,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgPlus,
                              height: getSize(
                                18.00,
                              ),
                              width: getSize(
                                18.00,
                              ),
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
