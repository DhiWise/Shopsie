import '../product_search_screen/widgets/product_search_item_widget.dart';
import 'controller/product_search_controller.dart';
import 'models/product_search_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';
import 'package:shopsie/widgets/custom_search_view.dart';

class ProductSearchScreen extends GetWidget<ProductSearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Obx(
                  () => Container(
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        CustomSearchView(
                            width: 390,
                            onChanged: controller.searchProduct,
                            focusNode: FocusNode(),
                            controller: controller.appbarController,
                            hintText: "lbl_search".tr,
                            alignment: Alignment.center,
                            
                            prefix: Container(
                              padding: EdgeInsets.all(10),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgSearchGray900)),
                            prefixConstraints: BoxConstraints(
                                minWidth: getSize(15.00),
                                minHeight: getSize(15.00)),
                            suffix: Padding(
                                padding: EdgeInsets.only(
                                    right: getHorizontalSize(1.00)),
                                child: IconButton(
                                    onPressed: () {
                                      Get.toNamed(
                                          AppRoutes.productDiscoverScreen);
                                    },
                                    icon: Icon(Icons.clear,
                                        color: Colors.grey.shade600))),
                            suffixConstraints: BoxConstraints(
                                minWidth: getHorizontalSize(10.00),
                                minHeight: getVerticalSize(10.00))),
                        Padding(
                            padding: getPadding(left: 16, top: 22, right: 16),
                            child: GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: getVerticalSize(309.00),
                                        crossAxisCount: 2,
                                        mainAxisSpacing:
                                            getHorizontalSize(16.00),
                                        crossAxisSpacing:
                                            getHorizontalSize(16.00)),
                                physics: BouncingScrollPhysics(),
                                itemCount: controller.productSearchModelObj
                                    .value.productSearchItemList.length,
                                itemBuilder: (context, index) {
                                  ProductSearchItemModel model = controller
                                      .productSearchModelObj
                                      .value
                                      .productSearchItemList[index];
                                  return ProductSearchItemWidget(model,
                                      onTapColumnproductname: () {
                                    Get.toNamed(AppRoutes.productPageScreen,
                                        arguments: {
                                          NavigationArgs.productId: controller
                                              .productSearchModelObj
                                              .value
                                              .productSearchItemList
                                              .value[index]
                                              .idTxt
                                        });
                                  });
                                }))
                      ])),
                )))));
  }
}
