import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'nav_drawer.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _productTitleController = TextEditingController();
  TextEditingController _productDescriptionController = TextEditingController();
  TextEditingController _productPriceController = TextEditingController();
  @override
  void dispose() {
    _productTitleController.dispose();
    _productDescriptionController.dispose();
    _productPriceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("AddProduct"),
      ),
      drawer: NavDrawer(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: _productTitleController,
                  decoration: InputDecoration(
                    hintText: "Product Title",
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "title is required";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _productDescriptionController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Product Description",
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Description is required";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  controller: _productPriceController,
                  decoration: InputDecoration(
                    hintText: "Product Price",
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Price is required";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                RaisedButton(
                    color: Colors.teal,
                    child: Text(
                      "save product",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      if (_formkey.currentState.validate()) {
                        FirebaseFirestore.instance.collection('products').add({
                          'product_title': _productTitleController.text,
                          'product_description':
                              _productDescriptionController.text,
                          'product_price': _productPriceController.text,
                        });
                      }
                    }),
              ],
            )),
      ),
    );
  }
}
