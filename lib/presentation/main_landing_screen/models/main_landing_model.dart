import 'package:get/get.dart';
import 'listproduct_item_model.dart';
import 'listprice_two_item_model.dart';

class MainLandingModel {
  RxList<ListproductItemModel> listproductItemList =
      RxList.filled(2, ListproductItemModel());

  RxList<ListpriceTwoItemModel> listpriceTwoItemList =
      RxList.filled(4, ListpriceTwoItemModel());
}
