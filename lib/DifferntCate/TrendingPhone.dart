import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../TrendingClass.dart';
//import 'file:///C:/Users/FERANMI%20ADEJINMI/AndroidStudioProjects/H.O.C/lib/TrendingWeb/TrendingClass.dart';


class TrendViewPhone extends StatefulWidget {

  @override
  _TrendViewPhoneState createState() => _TrendViewPhoneState();
}

class _TrendViewPhoneState extends State<TrendViewPhone> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount: product_trend.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 3),
        itemBuilder: (BuildContext context,int index){
          return Single_prod(
            prod_trend_name: product_trend[index]['name'],
            prod_trend_pictures: product_trend[index]['picture'],
            prod_trend_price: product_trend[index]['price'],
          );
        }
    );
  }
}
// ignore: camel_case_types
class Single_prod extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final prod_trend_name;
  // ignore: non_constant_identifier_names
  final prod_trend_pictures;
  // ignore: non_constant_identifier_names
  final prod_trend_price;

  // ignore: non_constant_identifier_names
  Single_prod({this.prod_trend_name,this.prod_trend_pictures,this.prod_trend_price});
  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}