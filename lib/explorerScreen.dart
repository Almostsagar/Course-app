import 'package:flutter/material.dart';
import 'package:smart_course_app/views/home.dart';
import 'data/data.dart';
import 'sideBar.dart';
import 'package:smart_course_app/models/trending_productmodel.dart';


class explorer extends StatefulWidget {
  const explorer({Key? key}) : super(key: key);

  @override
  _explorerState createState() => _explorerState();
}

class _explorerState extends State<explorer> {

  List<TrendingProductModel> trendingProducts = [];

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    trendingProducts = getTrendingProducts();
  }

  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children:[
            Container(
            padding: EdgeInsets.only(top: 5.0),
              child:  TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(color: Colors.black26),
                    fillColor: Colors.black,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.black54, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.black54, width: 2),
                    ),
                  )
              ),
          ),
            Card(
              child: Row(children:[
                Expanded(
                  child: RaisedButton.icon(
                    onPressed: (){ },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    label: Text('Hot',
                      style: TextStyle(color: Colors.white),),
                    icon: Icon(Icons.whatshot, color:Colors.amber,),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.pink,),
                ),
                Expanded(
                  child:RaisedButton.icon(
                    onPressed: (){ },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    label: Text('Trending',
                      style: TextStyle(color: Colors.white),),
                    icon: Icon(Icons.play_arrow, color:Colors.black,),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.purple[300],
                  ),
                ),
              ],),
            )
        ,
            Card(
              child: Row(children: [
                Container(
                  padding: EdgeInsets.all(9.0),
                  child: Column(
                    children:[ IconButton(
                      icon: Image.asset('Assets/business.jpg'),
                      iconSize: 60.0,
                      onPressed: () {},
                    ),
                    Text("Business")
                    ]
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(9.0),
                  child: Column(
                      children:[ IconButton(
                        icon: Image.asset('Assets/Design.png'),
                        iconSize: 60.0,
                        onPressed: () {},
                      ),
                        Text("Design")
                      ]
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(9.0),
                  child: Column(
                      children:[ IconButton(
                        icon: Image.asset('Assets/Development.jpg'),
                        iconSize: 60.0,
                        onPressed: () {},
                      ),
                        Text("Development")
                      ]
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(9.0),
                  child: Column(
                      children:[ IconButton(
                        icon: Image.asset('Assets/marketing.jpg'),
                        iconSize: 60.0,
                        onPressed: () {},
                      ),
                        Text("marketing")
                      ]
                  ),
                ),
              ],),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Text("Top categories", style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22
              ),),
            ),
            SizedBox(height: 20,),
            Container(
              height: 600,
              padding: EdgeInsets.only(left: 22),
              child: ListView.builder(
                  itemCount: trendingProducts.length,

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
            )
          ],
        ),
      ),
      drawer: SideDrawer(),
        )
    ;
  }



}
