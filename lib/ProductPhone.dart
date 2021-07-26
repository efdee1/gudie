import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoc/Class/catclass.dart';
import 'package:hoc/Class/model.dart';
import 'package:hoc/TrialProductPhone.dart';

class ProductPhoneTab extends StatefulWidget {
  @override
  _ProductPhoneTabState createState() => _ProductPhoneTabState();
}

class _ProductPhoneTabState extends State<ProductPhoneTab> {
  // ignore: deprecated_member_use
  List<CategoryModel> categories= new List<CategoryModel>();


  get index => 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();

  }
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Scrollbar(
        controller: controller,
        isAlwaysShown: true,
        thickness: 7,
        child: Container(
          child: Column(
            children: [
              SizedBox(height: _height*0.02,),
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
                child: Container(
                  height: _height*0.05,
                  child: ListView.builder(
                    controller: controller,
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
              SizedBox(height: 20,),
              Container(
                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ProductTrialPhone(),
                  )),
            ],
          ),
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
