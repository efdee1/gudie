import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoc/Catclass.dart';
import 'package:hoc/bar/catTab.dart';

class ProductPhoneTab extends StatelessWidget {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scrollbar(
        controller: controller,
        isAlwaysShown: true,
        thickness: 7,
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
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
              SizedBox(height: 20,),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );

  }
}
