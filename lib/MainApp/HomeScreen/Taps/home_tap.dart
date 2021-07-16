import 'package:fashion_app/MainApp/HomeScreen/components/categories.dart';
import 'package:fashion_app/MainApp/HomeScreen/components/header_text.dart';
import 'package:fashion_app/MainApp/HomeScreen/components/products.dart';
import 'package:fashion_app/MainApp/HomeScreen/components/search_box.dart';
import 'package:flutter/material.dart';
class home_tab extends StatelessWidget {
  const home_tab();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderText(),
        SearchBox(),
        Categories(),
        Products(),
      ],
    );
  }
}
