class BaseProductOption {
  String name;
  String value;
  String mate;
  double price;
  BaseProductOption(this.name, this.value, this.mate, this.price);
  BaseProductOption.fromJson(Map<String, dynamic> jsonObject) {
    this.name = jsonObject['name'];
    this.value = jsonObject['value'];
    this.mate = jsonObject['mate'];
    this.price = jsonObject['price'];
  }
}
