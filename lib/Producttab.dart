import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoc/Catclass.dart';
import 'package:hoc/bar/catTab.dart';

class ProductTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: SingleChildScrollView(
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
            Container(
              child: CategoryWeb(),
            ),
          ],
        ),
      ),
    );
  }
}

// // ignore: non_constant_identifier_names
// Widget Category(){
//   return Container(
//     child: CategoryWeb(),
//   );
// }
