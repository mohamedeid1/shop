import 'package:shop/cart/base_cart_item.dart';

class BaseCartItemController {
  BaseCartItem baseCartItem;
  BaseCartItemController(this.baseCartItem);
  static List<BaseCartItem> toBaseCartItem(
      List<Map<String, dynamic>> jsonObjects) {}
}
