import 'base_orders.dart';

class OrderController {
  BaseOrder order;
  OrderController(this.order);
  static List<BaseOrder> toOrders(List<Map<String, dynamic>> jsonObjects) {}
}
