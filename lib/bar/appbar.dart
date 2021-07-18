import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hoc/Class/ProductPhone.dart';
import 'package:hoc/DifferntCate/TrendingPhone.dart';
import 'package:hoc/Producttab.dart';
import 'package:hoc/Trending.dart';
//import 'package:hoc/bar/Phone.dart';
//import 'package:carousel_slider/carousel_slider.dart';

class Bar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraint){
          if(constraint.maxWidth< 600){
            return Phoneappbar();
          }else{
            return Webappbar();
          }
        }
    );
  }
}
class Webappbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
   final _height = MediaQuery.of(context).size.height;
    // Widget imagecarousel = Container(
    //   height: _height*0.02,
    //   child:  CarouselView(
    //     boxFit: BoxFit.fill,
    //   ),
    // );
    return DefaultTabController(
      length: 2,
      child: Container(
        constraints: BoxConstraints(maxWidth:_width),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.only(top:8.0,bottom: 8),
              child: _AppBar()
            ),
            // actions: [
            //   // IconButton(icon: Icon(Icons.search),color: Colors.black, onPressed: (){}),
            //   Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: IconButton(icon: Icon(Icons.shopping_cart),color: Colors.black, onPressed: (){}),
            //   ),
            // ],
            iconTheme: IconThemeData(color: Colors.black),

            bottom: buildTabBar(),

          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text(
                    'H.O.C',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/dope.jpg'))),
                ),
                ListTile(
                  leading: Icon(Icons.input),
                  title: Text('Login'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Icon(Icons.verified_user),
                  title: Text('Profile'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.person_add),
                  title: Text('Create Account'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              Trendingtab(),
              ProductTab()
            ],
          ),
        ),
      ),
    );
  }

  TabBar buildTabBar() {
    return TabBar(
            isScrollable: false,
            indicatorColor: Colors.brown,
            indicatorWeight: 5.0,
            onTap: (index){
            },
            tabs: [
              Tab(
                child: Container(
                  child: Text('Trending',
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Product',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                ),
              ),
            ],);
  }
}


class Phoneappbar extends StatelessWidget {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
   // final _height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Container(
        constraints: BoxConstraints(maxWidth:_width),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 8),
                child: _AppBar()
            ),
            // actions: [
            //   // IconButton(icon: Icon(Icons.search),color: Colors.black, onPressed: (){}),
            //   Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: IconButton(icon: Icon(Icons.shopping_cart),color: Colors.black, onPressed: (){}),
            //   ),
            // ],
            iconTheme: IconThemeData(color: Colors.black),

            bottom: buildTabBar(),

          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text(
                    'H.O.C',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/dope.jpg'))),
                ),
                ListTile(
                  leading: Icon(Icons.input),
                  title: Text('Login'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Icon(Icons.verified_user),
                  title: Text('Profile'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.person_add),
                  title: Text('Create Account'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ],
            ),
          ),

          body: TabBarView(

            children: [
              TrendingTabPhone(),
              ProductPhoneTab()

            ],
          ),
        ),
      ),
    );
  }

  buildTabBar() {
    return TabBar(
      isScrollable: false,
      indicatorColor: Colors.brown,
      indicatorWeight: 5.0,
      onTap: (index){
      },
      tabs: [
        Tab(
          child: Container(
            child: Text('Trending',
              style: TextStyle(
                  color: Colors.black
              ),
            ),
          ),
        ),
        Tab(
          child: Container(
            child: Text('Product',
              style: TextStyle(
                  color: Colors.black
              ),
            ),
          ),
        ),
      ],);
  }
}

// ignore: non_constant_identifier_names
Widget _AppBar(){
  return Container(

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            child:Text('H.O.C',
              style: TextStyle(
                  color: Colors.black
              ),
            )
        ),
        Container(
          child: IconButton(icon: Icon(Icons.shopping_cart),color: Colors.black, onPressed: (){}),
        ),

      ],
    ),
  );
}

Widget Trendingtab(){
  return
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  SizedBox(height: 15,),
                      CarouselSlider(
                      items: [
                  Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/real.jpeg'),
                        ),
                      ),
                  ),
                  Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/dope.jpg'),
                        ),
                      ),
                  ),
                  Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/dope.jpg'),
                        ),
                      ),
                  ),
                  Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/dope.jpg'),
                        ),
                      ),
                  ),
                  Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/dope.jpg'),
                        ),
                      ),
                  ),
                ],
                      options: CarouselOptions(
                          height: 200.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16/9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                       )
                      ),
                    ],
              ),
              SizedBox(height: 10,),
              Container(
                child: TrendView(),
              ),
            ],
          ),

        ),
      );

}


Widget TrendingTabPhone(){
  return
    Scrollbar(
      isAlwaysShown: true,
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  SizedBox(height: 15,),
                  CarouselSlider(
                      items: [
                        Container(
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/real.jpeg'),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/dope.jpg'),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/dope.jpg'),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/dope.jpg'),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/dope.jpg'),
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 200.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16/9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      )
                  ),
                ],
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                child: Container(
                  child:TrendViewPhone(),
                ),
              ),
            ],
          ),

        ),
      ),
    );

}
