import 'package:flutter/material.dart';
import 'package:shop/admin/add_category.dart';
import 'package:shop/admin/products.dart';
import 'package:shop/admin/utility_nav_menu.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  List<NavMenu> navigationMenu = [
    NavMenu("product", () => AllProduct()),
    NavMenu("category", () => AddCategory()),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemBuilder: (context, position) {
          return ListTile(
            title: Text(
              navigationMenu[position].title,
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => navigationMenu[position].destination(),
                ),
              );
            },
          );
        },
        itemCount: navigationMenu.length,
      ),
    );
  }
}
