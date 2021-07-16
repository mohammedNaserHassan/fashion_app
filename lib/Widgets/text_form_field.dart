import 'package:flutter/material.dart';
class text_form_field extends StatelessWidget {
  String label;
  Function validate;
  Function function;
TextInputType type;
bool state;
Function onchange;
   text_form_field({this.onchange,this.label,this.function,this.type= TextInputType.text,this.state=false,this.validate});

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.all(20),
        child: TextFormField(
          onChanged: onchange,
          validator:validate,
          obscureText: state,
          keyboardType: type,
          onSaved: function,
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.black.withOpacity(0.3),
            labelText: label,
            labelStyle: TextStyle(color: Colors.black),
          ),
        ));
  }
}
