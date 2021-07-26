import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoc/Class/catclass.dart';
import 'package:hoc/Class/model.dart';
import 'package:hoc/Class/productcls.dart';
import 'package:hoc/DifferntCate/Catone.dart';

class CategoryTab extends StatefulWidget {
  @override
  _CategoryTabState createState() => _CategoryTabState();

}

class _CategoryTabState extends State<CategoryTab> {
  // ignore: deprecated_member_use
  List <CategoryModel> categories = new List<CategoryModel>();
  // ignore: deprecated_member_use
  List <ProductModel> category = new List<ProductModel>();

  get index => 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories =  getCategories();
    category = getCategory();
  }
  @override
  Widget build(BuildContext context) {
     final _height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
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

        Card(

          child: Hero(tag: category[index].name,
            child: Material(
              child: InkWell(onTap: (){},
                child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text(category[index].name),
                      title: Text(category[index].price),
                    ),
                  ),
                  child: Image.asset(category[index].image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
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
      //margin: EdgeInsets.only(bottom: 16),
      child:Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
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
    );
  }
}
