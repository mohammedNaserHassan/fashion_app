import 'package:fashion_app/constants/constants.dart';
import 'package:fashion_app/data/data.dart';
import 'package:flutter/material.dart';


class MyListtle extends StatefulWidget {
  final String title;
  final String imagePath;
  final double price;
  bool isFavourite;

  MyListtle({this.title, this.imagePath, this.price, this.isFavourite});
  @override
  _mylisttile createState() => _mylisttile();
}

class _mylisttile extends State<MyListtle> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
          children:[
            ListTile(
              dense: true,
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    widget.isFavourite
                        ? widget.isFavourite = false
                        : widget.isFavourite = true;

                    if (widget.isFavourite == true) {
                      Productss.productsData.addToFavorites(widget.title);

                    } else {
                      Productss.productsData.removeFromFavorites(widget.title);
                    }
                  });
                },
                icon: widget.isFavourite
                    ? Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
                    : Icon(Icons.favorite_outline),
              ),
            ),
            Center(child: Text(widget.title)),
            SizedBox(height: 25,),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text(widget.price.toString() ?? "\$ ${widget.price}"),
            ),
          ]
        ),
    );
  }
}
