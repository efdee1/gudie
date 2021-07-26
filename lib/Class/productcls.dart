class ProductModel{
  String image;
  String name;
  String price;

  ProductModel({this.image,this.name,this.price});

  get categoryName => name;

}

