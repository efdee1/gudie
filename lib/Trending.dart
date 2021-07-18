import 'package:flutter/material.dart';

import 'Class/catclass.dart';
import 'Class/model.dart';
import 'Class/productcls.dart';
import 'DifferntCate/Catone.dart';

class TrendView extends StatefulWidget {
  @override
  _TrendViewState createState() => _TrendViewState();
}

class _TrendViewState extends State<TrendView> {
  List <CategoryModel> categories = new List<CategoryModel>();
  List <ProductModel> category = new List<ProductModel>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories =  getCategories();
    category = getCategory();
  }
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          child: Text('Recent'),
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
            }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4,
            childAspectRatio: 1.2,
             mainAxisSpacing: 1,
             crossAxisSpacing: 1,
          ),
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
            SizedBox(height:8,),
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
