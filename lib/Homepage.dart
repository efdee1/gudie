import 'package:flutter/material.dart';
import 'package:hoc/bar/appbar.dart';

import 'bar/Phone.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       child: Padding(
         padding: const EdgeInsets.symmetric(vertical:18.0,horizontal: 18),
         child: Bar(),
       ),
     ),
    );
  }
}
