import 'package:shop/tag/base_tag.dart';

class TagController {
  BaseTag tag;
  TagController(this.tag);
  static List<BaseTag> toTag(List<Map<String, dynamic>> jsonObjects) {}
}
