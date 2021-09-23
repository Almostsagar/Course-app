
import 'package:flutter/material.dart';
import 'package:smart_course_app/data/data.dart';
import 'package:smart_course_app/models/categorie_model.dart';
import 'package:smart_course_app/models/product_model.dart';
import 'package:smart_course_app/models/trending_productmodel.dart';
import 'package:smart_course_app/resources/colors.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

// ignore: deprecated_member_use
  List<TrendingProductModel> trendingProducts = [];
  // ignore: deprecated_member_use
  List<ProductModel> products = [];
  // ignore: deprecated_member_use
  List<CategorieModel> categories = [];
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    trendingProducts = getTrendingProducts();
    products = getProducts();
    categories = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children:[ Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 5,),
              // here we will add our containers


              /// Search Bar
              Container(
                margin: EdgeInsets.symmetric(horizontal:3),
                padding: EdgeInsets.symmetric(horizontal:0, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 5.0,
                      color: Colors.black87.withOpacity(0.05),
                    ),
                  ],
                ),
                child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(color: Colors.black26),
                      fillColor: Colors.black,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.white, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.white, width: 2),
                      ),
                    )
                ),
              ),



              SizedBox(height: 30,),
              /// Trending
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text("Today Trending", style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22
                    ),),
                    SizedBox(width: 12,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 22),
                height: 136,
                child: ListView.builder(
                    itemCount: trendingProducts.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
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



              SizedBox(height: 40,),
              /// Best Selling
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text("Best Selling", style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22
                    ),),
                    SizedBox(width: 12,),
                    Text("This week")
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 240,
                padding: EdgeInsets.only(left: 22),
                child: ListView.builder(
                    itemCount: products.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return ProductTile(
                        priceInDollars: products[index].priceInDollars,
                        productName: products[index].productName,
                        rating: products[index].rating,
                        imgUrl: products[index].imgUrl,
                        noOfRating: products[index].noOfRating,
                      );
                    }),
              ),

              /// Top categorie
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Text("Top categories", style: TextStyle(
                    color: Colors.black87,
                    fontSize: 22
                ),),
              ),
              SizedBox(height: 20,),
              Container(
                height: 240,
                padding: EdgeInsets.only(left: 22),
                child: ListView.builder(
                    itemCount: trendingProducts.length,
                    shrinkWrap: true,
                    // scrollDirection: Axis.vertical,
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
              )
            ],
          ),
        ],)
    );
  }}

class TrendingTile extends StatelessWidget {
  final String ?courseName;
  final String ?authorname;
  final String ?imgUrl;
  final int ?noOfRating;
  final int ?priceInDollars;
  final int ?rating;
  TrendingTile({required this.courseName,required this.authorname,required this.imgUrl,required this.rating,required this.noOfRating,required this.priceInDollars});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      margin: EdgeInsets.only(right: 13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(1.0, 1.0),
            blurRadius: 15.0,
            color: Colors.black87.withOpacity(0.05),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Image.asset("Assets/business.jpg",height: 100,fit: BoxFit.cover,) ,
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14,vertical:20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(courseName!, style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15
                ),),
                Text(authorname!, style: TextStyle(
                    color: textGrey
                ),),
                SizedBox(height: 8,),
                Row(
                  children: <Widget>[
                    StarRating(rating: rating,),
                    SizedBox(width: 3,),
                    Text("($noOfRating)", style: TextStyle(
                        color: textGrey,
                        fontSize: 12
                    ),)
                  ],
                ),
                SizedBox(height: 13,),
                Text("\$$priceInDollars",style: TextStyle(
                    color: Colors.black),),
                SizedBox(height: 5,),
                // Container(
                //   height: 30,
                //   padding: EdgeInsets.symmetric(horizontal: 12),alignment: Alignment.center,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(4) ,
                //       gradient: LinearGradient(
                //           colors: [const Color(0xff8EA2FF), const Color(0xff557AC7)]
                //       )
                //   ),
                //   child: Text(
                //     "Add to cart", style: TextStyle(
                //       color: Colors.white
                //   ),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class StarRating extends StatelessWidget {
  final int ?rating;
  StarRating({required this.rating});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(rating! >= 1? "Assets/star.png" : "Assets/stargrey.png",width: 13,height: 13,),
        SizedBox(width: 3,),
        Image.asset(rating! >= 2? "Assets/star.png" : "Assets/stargrey.png",width: 13,height: 13,),
        SizedBox(width: 3,),
        Image.asset(rating! >= 3? "Assets/star.png" : "Assets/stargrey.png",width: 13,height: 13,),
        SizedBox(width: 3,),
        Image.asset(rating! >= 4? "Assets/star.png" : "Assets/stargrey.png",width: 13,height: 13,),
        SizedBox(width: 3,),
        Image.asset(rating! >= 5? "Assets/star.png" : "Assets/stargrey.png",width: 13,height: 13,),
      ],
    );
  }
}

class ProductTile extends StatelessWidget {
  final int ?priceInDollars;
  final String ?productName;
  final int ?rating;
  final String ?imgUrl;
  final int ?noOfRating;
  ProductTile({required this.priceInDollars, required this.imgUrl,required this.rating,required this.productName,required this.noOfRating});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Image.asset("Assets/marketing.jpg",height: 150,fit: BoxFit.cover,) ,
              ],
            ),
          ),
          Text(productName!),
          SizedBox(height: 8,),
          Row(
            children: <Widget>[
              StarRating(rating: rating,),
              SizedBox(width: 10,),
              Text("($noOfRating)", style: TextStyle(
                  color: textGrey,
                  fontSize: 12
              ),)
            ],
          ),
        ],
      ),
    );
  }
}

// class CategorieTile extends StatelessWidget {
//   final String ?categorieName;
//   final String ?imgAssetPath;
//   final String ?color1;
//   final String ?color2;
//   CategorieTile({required this.imgAssetPath,required this.color2,required this.color1,required this.categorieName});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width - 70,
//       margin: EdgeInsets.only(right: 13),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(4),
//         boxShadow: <BoxShadow>[
//           BoxShadow(
//             offset: Offset(1.0, 1.0),
//             blurRadius: 15.0,
//             color: Colors.black87.withOpacity(0.05),
//           ),
//         ],
//       ),
//       child: Row(
//         children: <Widget>[
//           Container(
//             child: Stack(
//               children: <Widget>[
//                 Image.asset("Assets/business.jpg",height: 150,fit: BoxFit.cover,) ,
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 14,vertical: 12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(courseName!, style: TextStyle(
//                     color: Colors.black87,
//                     fontSize: 15
//                 ),),
//                 Text(authorname!, style: TextStyle(
//                     color: textGrey
//                 ),),
//                 SizedBox(height: 8,),
//                 Row(
//                   children: <Widget>[
//                     StarRating(rating: rating,),
//                     SizedBox(width: 3,),
//                     Text("($noOfRating)", style: TextStyle(
//                         color: textGrey,
//                         fontSize: 12
//                     ),)
//                   ],
//                 ),
//                 SizedBox(height: 13,),
//                 Text("\$$priceInDollars",style: TextStyle(
//                     color: Colors.black),),
//                 SizedBox(height: 5,),
//                 Container(
//                   height: 30,
//                   padding: EdgeInsets.symmetric(horizontal: 12),alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(4) ,
//                       gradient: LinearGradient(
//                           colors: [const Color(0xff8EA2FF), const Color(0xff557AC7)]
//                       )
//                   ),
//                   child: Text(
//                     "Add to cart", style: TextStyle(
//                       color: Colors.white
//                   ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }