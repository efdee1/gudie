import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hoc/Class/catclass.dart';
import 'package:hoc/Class/model.dart';
//import 'file:///C:/Users/FERANMI%20ADEJINMI/AndroidStudioProjects/H.O.C/lib/WEB/TrialProduct.dart';
import 'package:hoc/WEB/TrialProduct.dart';

class ProductTab extends StatefulWidget {

  @override
  _ProductTabState createState() => _ProductTabState();
}

class _ProductTabState extends State<ProductTab> {
  // ignore: deprecated_member_use
  List<CategoryModel> categories= new List<CategoryModel>();


  get index => 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();

  }

  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return Scrollbar(
      controller: _controller,
      isAlwaysShown: true,
      thickness: 7,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: _height*0.04,),
            Container(
              child: TextField(
                decoration:InputDecoration(
                  suffixIcon: Icon(Icons.search,color: Colors.black,) ,
                  border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(18), ),
                  hintText: 'Search for product'
                ) ,

              ),
            ),
            SizedBox(height: _height*0.02,),
            Container(
              // height: _height*0.05,
              child: Container(
                height: _height*0.05,
                child: ListView.builder(
                  controller: _controller,
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
            SizedBox(height: _height*0.02,),
            Container(
              child: ProductTrial(),

            ),
          ],
        ),
      ),
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