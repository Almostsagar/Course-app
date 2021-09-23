import 'package:flutter/material.dart';
import 'package:smart_course_app/models/trending_productmodel.dart';
import 'package:smart_course_app/views/home.dart';

import 'data/data.dart';

class wishList extends StatefulWidget {
  const wishList({Key? key}) : super(key: key);

  @override
  _wishListState createState() => _wishListState();
}

class _wishListState extends State<wishList> {

  List<TrendingProductModel> trendingProducts = [];

  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    trendingProducts = getTrendingProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[
            Container(
              height: 36,
              child: Text("Wishlists",style: TextStyle(fontSize: 18),),
              padding: EdgeInsets.fromLTRB(40,4,10,2),
              margin: EdgeInsets.only(right: 230,top: 5),
              decoration: BoxDecoration(
                color: Colors.amber[300],
                  border: Border.all(width: 2,color: Colors.purple),
                  borderRadius: const BorderRadius.all(const Radius.circular(30))
              ),
            ),
        SizedBox(height: 2,),
        Card(
          child: Container(
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
        ),],
      ),
    );
  }
}
