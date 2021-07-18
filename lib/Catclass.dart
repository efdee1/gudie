import 'package:flutter/material.dart';

import 'Class/catclass.dart';
import 'Class/model.dart';
import 'Class/productcls.dart';
import 'DifferntCate/Catone.dart';

class CategoryWeb extends StatefulWidget {
  @override
  _CategoryWebState createState() => _CategoryWebState();
}

class _CategoryWebState extends State<CategoryWeb> {
  // ignore: deprecated_member_use
  List<CategoryModel> categories= new List<CategoryModel>();
  List <ProductModel> category = new List<ProductModel>();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
    category = getCategory();
  }
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
           // height: _height*0.05,
            child: Container(
              height: _height*0.05,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  shrinkWrap: true,
                  itemBuilder:(context, index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical:0,horizontal:3),
                      child: CategoryTile(
                        categoryName: categories[index].categoryName,
                      ),
                    );
                  }
                  ),
            ),
        ),

        Container(
          //width: _width,
          height: _height,
          child:GridView.builder(
            itemCount: category.length,
            shrinkWrap: true,
           // physics:ClampingScrollPhysics() ,
            itemBuilder: (context, index){
              return ProductTile(
                image: category[index].image,
                name: category[index].name,
                price:category[index].price,

              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:5,
                childAspectRatio: 1.2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1),
          ),
        ),
      ],
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String  categoryName;
  CategoryTile({ this.categoryName});
  @override
  Widget build(BuildContext context) {
    return Container(
     // margin: EdgeInsets.only(right:16.0),
      child: Stack(
        children:<Widget> [
          Container(
            alignment: Alignment.center,
            width: 120,height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.orange ,
            ),
            child: Text(categoryName,style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight:FontWeight.w500
            ),),
          ),
        ],
      ),
    );
  }
}


class ProductTile extends StatelessWidget {
  final String image,name,price;
  ProductTile({@required this.image,@required this.name,@required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(

      child:Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(image),
            ),
          ),
          SizedBox(height: 8,),
          Text(name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8,),
          Text(price,
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
