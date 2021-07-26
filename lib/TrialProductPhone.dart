import 'package:flutter/material.dart';

import 'VarWebPro.dart';

class ProductTrialPhone extends StatefulWidget {
  @override
  _ProductTrialState createState() => _ProductTrialState();
}

class _ProductTrialState extends State<ProductTrialPhone> {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount: product_list.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,

        ),
        itemBuilder: (BuildContext context,int index){
          return SingleProd(
            prod_name: product_list[index]['name'],
            prod_pictures: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
          );
        }
    );
  }
}
class SingleProd extends StatelessWidget {
  final prod_name; // ignore: non_constant_identifier_names
  // ignore: non_constant_identifier_names
  final prod_pictures;
  // ignore: non_constant_identifier_names
  final prod_price;

  // ignore: non_constant_identifier_names
  SingleProd({this.prod_name,this.prod_pictures,this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.all(Radius.circular(20))
      ),
      child: Hero(tag:prod_name,
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
                        child: Text(prod_name,style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      Text("\$$prod_price"),
                    ],
                  ),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  prod_pictures,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
