import 'dart:convert';

import 'package:shop/order/order_controller.dart';
import 'package:shop/product/product_controller.dart';
import 'package:shop/user/address.dart';
import 'address.dart';
import 'user.dart';
import 'package:shop/product/base_product.dart';
import 'package:shop/order/base_orders.dart';

class Customer extends User {
  Address shippingAddress;
  Address billingAddress;
  List<BaseProduct> watchList;
  List<BaseOrder> orders;
  Customer(
    String id,
    String firstName,
    String lastName,
    String email,
    String gender,
    String phone,
    Address shippingAddress,
    Address billingAddress,
    List<BaseProduct> watchList,
    List<BaseOrder> orders,
  ) : super(id, firstName, lastName, email, gender, phone) {
    this.shippingAddress = shippingAddress;
    this.billingAddress = billingAddress;
    this.orders = orders;
    this.watchList = watchList;
  }
  Customer.fromJson(Map<String, dynamic> jsonObject)
      : super(
          jsonObject['id'],
          jsonObject['firstName'],
          jsonObject['lastName'],
          jsonObject['email'],
          jsonObject['gender'],
          jsonObject['phone'],
        ) {
    this.shippingAddress = Address.fromjson(jsonObject['shippingAddress']);
    this.billingAddress = Address.fromjson(jsonObject['billingAddress']);
    this.watchList = ProductController.toProducts(jsonObject['watch_list']);
    this.orders = OrderController.toOrders(jsonObject['orders']);
  }
}
