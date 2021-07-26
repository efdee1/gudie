import 'package:flutter/material.dart';
import 'TrendingClass.dart';
//import 'file:///C:/Users/FERANMI%20ADEJINMI/AndroidStudioProjects/H.O.C/lib/TrendingWeb/TrendingClass.dart';

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
    return GridView.builder(itemCount: product_trend.length,
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 3),
    itemBuilder: (BuildContext context,int index) {
      return Single_Prod_Web(
        prod_trend_name: product_trend[index]['name'],
        prod_trend_pictures: product_trend[index]['picture'],
        prod_trend_price: product_trend[index]['price'],
      );
    }
    );
  }
}
// ignore: camel_case_types
class Single_Prod_Web extends StatelessWidget {
  final prod_trend_name;
  final prod_trend_pictures;
  final prod_trend_price;

  Single_Prod_Web({this.prod_trend_name,this.prod_trend_pictures,this.prod_trend_price});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.all(Radius.circular(20))
          ),
          child: Hero(tag:prod_trend_name,
            child: Material(
              child: InkWell(onTap: (){},
                child: GridTile(
                  footer: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                          bottomLeft: const Radius.circular(20.0),
                          bottomRight: const Radius.circular(20.0),
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(prod_trend_name,style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                          Text("\$$prod_trend_price"),
                        ],
                      ),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      prod_trend_pictures,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // ),
                ),
              ),
            ),
          )
      ),
    );
  }
}


