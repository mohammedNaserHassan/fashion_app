import 'package:fashion_app/Model/product_model.dart';
class Productss{
  Productss._();
  static final productsData = Productss._();


   List <ProductModel> productList = [
   ProductModel(
     isFavourite: false,
      name: 'Black Dress',
      manufacturer: 'bewitched',
      imageUrl: 'assets/images/dress4.jpg',
      listImagesUrl: ['assets/images/dress4.jpg','assets/images/dress3.jpg',],
      price: 540,
      size: 'L',
      color: 'Black'
  ),
     ProductModel(
         isFavourite: false,
         name: 'Dye Grey Dress',
         manufacturer: 'porcelain',
         imageUrl: 'assets/images/dress1.jpg',
         listImagesUrl: ['assets/images/dress2.jpg','assets/images/dress1.jpg',],
         price: 650,
         size: 'XL',
         color: 'Grey'
     ),
  ProductModel(
      isFavourite: false,
      name: 'Black Dress',
      manufacturer: 'bewitched',
      imageUrl: 'assets/images/dress3.jpg',
      listImagesUrl: ['assets/images/dress4.jpg','assets/images/dress3.jpg',],
      price: 540,
      size: 'L',
      color: 'Black'
  ),
   ProductModel(
       isFavourite: false,
      name: 'Gray Dress',
      manufacturer: 'bewitched',
      imageUrl: 'assets/images/dress1.jpg',
      listImagesUrl: ['assets/images/dress4.jpg','assets/images/dress3.jpg',],
      price: 540,
      size: 'L',
      color: 'Black'
  ),
  ProductModel(
      isFavourite: false,
      name: 'Pink Dress',
      manufacturer: 'bewitched',
      imageUrl: 'assets/images/dress5.jpg',
      listImagesUrl: ['assets/images/dress4.jpg','assets/images/dress3.jpg',],
      price: 540,
      size: 'L',
      color: 'Black'
  ),
  ProductModel(
      isFavourite: false,
      name: 'Mix Dress',
      manufacturer: 'bewitched',
      imageUrl: 'assets/images/dress6.jpg',
      listImagesUrl: ['assets/images/dress6.jpg','assets/images/dress3.jpg',],
      price: 540,
      size: 'L',
      color: 'Black'
  ),
  ProductModel(
      isFavourite: false,
      name: 'White Dress',
      manufacturer: 'bewitched',
      imageUrl: 'assets/images/dress7.jpg',
      listImagesUrl: ['assets/images/dress7.jpg','assets/images/dress3.jpg',],
      price: 540,
      size: 'L',
      color: 'Black'
  ),
   ProductModel(
       isFavourite: false,
      name: 'Blue Dress',
      manufacturer: 'bewitched',
      imageUrl: 'assets/images/dress8.jpg',
      listImagesUrl: ['assets/images/dress4.jpg','assets/images/dress3.jpg',],
      price: 540,
      size: 'L',
      color: 'Black'
  )
  ];

  List<ProductModel> favoritesProducts = [];

  addToFavorites(String title) {
    productList.forEach((element) {
      if (element.name == title) {
        element.isFavourite = true;
        favoritesProducts.add(element);
      }
    });
  }

  removeFromFavorites(title) {
    productList.forEach((element) {
      if (element.name == title) {
        element.isFavourite = false;
        favoritesProducts.remove(element);
      }
    });
  }

  List<String> categoryList = [
    'What\'s New',
    'Style',
    'Outfit',
    'Trending',
  ];

}
