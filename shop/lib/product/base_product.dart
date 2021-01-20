import 'package:shop/category/base_category.dart';
import 'package:shop/category/category_controller.dart';
import 'package:shop/discount/base_discount.dart';
import 'package:shop/discount/discount_controller.dart';
import 'package:shop/image/base_iamge.dart';
import 'package:shop/image/images_controller.dart';
import 'package:shop/product_option/base_option.dart';
import 'package:shop/product_option/option_controller.dart';
import 'package:shop/tag/base_tag.dart';
import 'package:shop/tag/tag_controller.dart';

class BaseProduct {
  String id;
  String title;
  String description;
  double price;
  double quantity;
  List<BaseImage> images;
  List<BaseProductOption> options;
  List<BaseCategory> categories;
  List<BaseTag> tags;
  List<BaseDiscount> discounts;
  BaseProduct(this.id, this.title, this.description, this.price, this.quantity,
      this.images, this.options, this.categories, this.tags, this.discounts);

  BaseProduct.fromJson(Map<String, dynamic> jsonObject) {
    this.id = jsonObject['id'];
    this.title = jsonObject['title'];
    this.description = jsonObject['description'];
    this.price = jsonObject['price'];
    this.quantity = jsonObject['quantity'];
    this.images = ImagesController.toImages(jsonObject['images']);
    this.options = OptionController.toOptions(jsonObject['options']);
    this.categories = CategoryController.toCategories(jsonObject['categories']);
    this.tags = TagController.toTag(jsonObject['tags']);
    this.discounts = DiscountController.toDiscounts(jsonObject['discounts']);
  }
}
