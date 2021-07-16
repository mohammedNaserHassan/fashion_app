import 'package:fashion_app/Widgets/mylisttile.dart';
import 'package:fashion_app/data/data.dart';
import 'package:flutter/material.dart';
class favoueite extends StatelessWidget {
   favoueite();

  @override
  Widget build(BuildContext context) {
    return Productss.productsData.favoritesProducts.length!=0?
    ListView.builder(
        itemCount: Productss.productsData.favoritesProducts.length,
        itemBuilder: (context, index) {
          return MyListtle(
            title: Productss.productsData.favoritesProducts[index].name,
            imagePath: Productss.productsData.favoritesProducts[index].imageUrl,
            isFavourite: Productss.productsData.favoritesProducts[index].isFavourite,
          );
        })
        : Align(
        alignment: Alignment.bottomCenter,
        child: Text('No Favourite yet',style: TextStyle(fontSize: 25),));
  }
}
