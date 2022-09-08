import 'package:get/get.dart';
import 'product_search_item_model.dart';

class ProductSearchModel {
  RxList<ProductSearchItemModel> productSearchItemList =
      RxList.filled(0, ProductSearchItemModel());
}
