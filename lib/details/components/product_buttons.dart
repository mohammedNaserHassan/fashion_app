import 'package:fashion_app/MainApp/HomeScreen/Taps/card.dart';
import 'package:fashion_app/Model/product_model.dart';
import 'package:fashion_app/Model/router.dart';
import 'package:fashion_app/constants/constants.dart';
import 'package:fashion_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProductButtons extends StatefulWidget {
  final ProductModel productModel;

  ProductButtons(this.productModel);

  @override
  _ProductButtonsState createState() => _ProductButtonsState();
}

class _ProductButtonsState extends State<ProductButtons> {
  List categories = ['Black', 'White','Blue','Red'];
  List categor = ['L', 'XL','M','S'];
  String dropdown = 'Black';
  String drop = 'L';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(appPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Size',
                    style: TextStyle(
                      color: darkGrey,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: appPadding),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: appPadding / 2,
                        vertical: appPadding / 2,
                      ),
                      width: size.width * 0.2,
                      height: 50,
                      decoration: BoxDecoration(
                        color: white,
                        border: Border.all(color: grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButton<String>(
                        icon: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Icon(Icons.arrow_drop_down_outlined,color: Colors.grey,size: 22,)),
                        style: TextStyle(color: Colors.grey,fontSize: 20),
                        value: drop,
                        onChanged: (c) {
                          drop = c;
                          setState(() {});
                        },
                        items: categor
                            .map((e) => DropdownMenuItem<String>(
                          child: Text(e),
                          value: e,
                        ))
                            .toList(),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Color',
                    style: TextStyle(
                      color: darkGrey,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: appPadding),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: appPadding / 2,
                        vertical: appPadding /2
                      ),
                      width: size.width * 0.25,
                      height: 50,
                      decoration: BoxDecoration(
                        color: white,
                        border: Border.all(color: grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:DropdownButton<String>(
                        icon: Container(
                            margin: EdgeInsets.only(left: 7),
                            child: Icon(Icons.arrow_drop_down_outlined,color: Colors.grey,size: 22,)),
                        style: TextStyle(color: Colors.grey,fontSize: 20),
                        value: dropdown,
                        onChanged: (c) {
                          dropdown = c;
                          setState(() {});
                        },
                        items: categories
                            .map((e) => DropdownMenuItem<String>(
                          child: Text(e),
                          value: e,
                        ))
                            .toList(),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: appPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(appPadding / 2),
                  child: Container(
                    margin: EdgeInsets.only(right: 10,bottom: 5),
                    child: IconButton(
                      onPressed: (){
                        setState(() {
    widget.productModel.isFavourite
    ? widget.productModel.isFavourite = false
        : widget.productModel.isFavourite = true;
    if (widget.productModel.isFavourite == true) {
    Productss.productsData.addToFavorites(widget.productModel.name);
    } else {
    Productss.productsData.removeFromFavorites(widget.productModel.name);}
                        });
                      },
                      icon:  widget.productModel.isFavourite
                          ? Icon(
                        Icons.favorite,
                        size: 40,
                        color: Colors.red,
                      )
                          : Icon(Icons.favorite_outline,size: 40, color: grey,),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    AppRouter.appRouter.pushfunction(card(widget.productModel.price));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: pink,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: appPadding / 2,
                      horizontal: appPadding,
                    ),
                    child: Row(
                      children: [
                        Text('\$${widget.productModel.price}',style: TextStyle(
                          color: white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),),
                        SizedBox(width: size.width * 0.2,),
                        Icon(Icons.arrow_forward_rounded,color: white,size: 40,)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
