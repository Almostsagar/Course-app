import 'package:flutter/material.dart';
import 'main.dart';
import 'mycoursescreen.dart';
import 'sideBar.dart';
import 'explorerScreen.dart';
import 'views/home.dart';
import 'wishlistpage.dart';
import 'myAccount.dart';



class myLearningscreen extends StatefulWidget {
  const myLearningscreen({Key? key}) : super(key: key);

  @override
  _myLearningscreenState createState() => _myLearningscreenState();
}

class _myLearningscreenState extends State<myLearningscreen> {

  int _selectedIndex = 2;
  final List<Widget>_children=[
    explorer(),
    wishList(),
    MyHomePage(),
    myCourseScreen(),
    Cl(),
  ];

  void onTappedBar(int index)
  {
    setState(() {
      _selectedIndex=index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logo"),
    actions: <Widget>[
    IconButton(
    icon: const Icon(Icons.brightness_6),
    tooltip: 'Dark mode',
    onPressed: () {
    }
      ),

  ],backgroundColor: Colors.purple[800],
    ),



    drawer: SideDrawer(),
      body:_children[_selectedIndex]



      ,bottomNavigationBar: BottomNavigationBar(
      onTap: onTappedBar,
    items:  <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.search,size: 30,),
    label: 'search',
    backgroundColor:Colors.purple[800],
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.star,size: 30,),
    label: 'wishlist',
    backgroundColor:Colors.purple[800]
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.home,size: 30,),
    label: 'Home',
    backgroundColor:Colors.purple[800]
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.import_contacts,size: 30,),
    label: 'My learning',
    backgroundColor:Colors.purple[800],
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.account_circle,size: 30,),
    label: 'My Accounts',
    backgroundColor:Colors.purple[800]
    )
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Colors.amber[400],
    backgroundColor:Colors.purple[800],
    ),

      ) ;
  }
}
