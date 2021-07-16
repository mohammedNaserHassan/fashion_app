import 'package:fashion_app/Model/glopals.dart';
import 'package:flutter/material.dart';

class text_field extends StatelessWidget {
  String hinttext;
  IconData iconData;
  bool state;
  Function f;
  TextEditingController textEditingController;
  Function onchange;

  text_field(
      {this.onchange,
        this.hinttext,
      this.iconData,
      this.state,
      this.textEditingController,
      this.f});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(color: Colors.black54),
      child: TextField(
        onChanged: onchange,
        onSubmitted: f,
        controller: textEditingController,
        obscureText: state,
        style: TextStyle(fontSize: 20, color: Colors.grey),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttext,
            icon: Icon(
              iconData,
              color: Colors.grey,
            ),
            hintStyle: TextStyle(fontSize: 20, color: Colors.grey)),
      ),
    );
  }
}
