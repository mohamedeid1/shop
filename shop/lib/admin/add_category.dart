import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AddCategory extends StatefulWidget {
  @override
  _AddCategoryState createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  TextEditingController _categoryController = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    _categoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddCategory'),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _categoryController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'category title is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: 'Category Title'),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: RaisedButton(
                    child: Text("AddCategory"),
                    onPressed: () {
                      if (_formkey.currentState.validate()) {
                        FirebaseFirestore.instance
                            .collection("categories")
                            .doc()
                            .set({
                          'title': _categoryController.text,
                        });
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
