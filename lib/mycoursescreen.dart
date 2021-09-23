import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_course_app/views/home.dart';

import 'data/data.dart';
import 'models/trending_productmodel.dart';

class myCourseScreen extends StatefulWidget {
  const myCourseScreen({Key? key}) : super(key: key);

  @override
  _myCourseScreenState createState() => _myCourseScreenState();
}

class _myCourseScreenState extends State<myCourseScreen> {

  List<TrendingProductModel> trendingProducts = [];

  void initState() {
    super.initState();
    trendingProducts = getTrendingProducts();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: <Widget>[
          Container(
            height: 36,
            child: Text("All Courses",style: TextStyle(fontSize: 18),),
            padding: EdgeInsets.fromLTRB(23,2,10,2),
            margin: EdgeInsets.only(right: 240,top: 5,left: 3),
            decoration: BoxDecoration(
                color: Colors.amber[300],
              border: Border.all(width: 2,color: Colors.purple),
              borderRadius: const BorderRadius.all(const Radius.circular(30))
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 600,
            padding: EdgeInsets.only(left: 22),
            child: ListView.builder(
                itemCount: trendingProducts.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index){
                  return TrendingTile(
                    priceInDollars: trendingProducts[index].priceInDollars,
                    courseName: trendingProducts[index].courseName,
                    authorname: trendingProducts[index].authorname,
                    imgUrl: trendingProducts[index].imgUrl,
                    noOfRating: trendingProducts[index].noOfRating,
                    rating: trendingProducts[index].rating,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
