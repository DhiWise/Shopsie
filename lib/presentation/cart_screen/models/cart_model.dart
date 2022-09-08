import 'package:get/get.dart';
import 'cart_item_model.dart';

class CartModel {
  RxList<CartItemModel> cartItemList = RxList.filled(0, CartItemModel());

  Rx<String> priceTwoTxt = Rx('');
}
