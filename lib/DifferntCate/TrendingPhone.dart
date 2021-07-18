import 'package:flutter/material.dart';
import 'package:hoc/Class/catclass.dart';
import 'package:hoc/Class/model.dart';
import 'package:hoc/Class/productcls.dart';
import 'package:hoc/Trending.dart';

import 'Catone.dart';

class TrendViewPhone extends StatefulWidget {

  @override
  _TrendViewPhoneState createState() => _TrendViewPhoneState();
}

class _TrendViewPhoneState extends State<TrendViewPhone> {
  List <CategoryModel> categories = new List<CategoryModel>();
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
          child: Text('RECENT',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(height: _height*0.01,),
        Container(
          height: _height,
          child:GridView.builder(
            itemCount: category.length,
            shrinkWrap: true,
            physics:ClampingScrollPhysics() ,
            itemBuilder: (context, index){
              return ProductTile(
                image: category[index].image,
                name: category[index].name,
                price:category[index].price,
              );
            }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,
              childAspectRatio:1.05),
          ),
        ),
      ],
    );
  }
}


class ProductTile extends StatelessWidget {
  final String image,name,price;
  ProductTile({@required this.image,@required this.name,@required this.price});

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        // margin: EdgeInsets.only(bottom: 10),
        child:Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(image),
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
      ),
    );
  }
}
