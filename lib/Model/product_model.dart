class ProductModel{
  String name;
  String imageUrl;
  List<String> listImagesUrl;
  int price;
  String manufacturer;
  String size;
  String color;
  bool isFavourite;

  ProductModel({
   this.name,
   this.imageUrl,
   this.listImagesUrl,
   this.price,
   this.manufacturer,
   this.size,
   this.color,
    this.isFavourite
});
}