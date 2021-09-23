import 'package:flutter/material.dart';
import 'package:css_colors/css_colors.dart';

class Cl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView(
        children: <Widget>[
          Card(
            child: Container(
              margin: EdgeInsets.all(5),
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                  stops: [0.3, 0.7],
                ),
                  border: Border.all(width: 2,color: Colors.purple),
                  borderRadius: const BorderRadius.all(const Radius.circular(10))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        minRadius: 60.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/236x/27/e3/a1/27e3a1eaaa068606c7eaae816224f19b--assasins-cred-assassins-creed-wallpapers.jpg'),
                      ),
                      )],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sagar Kumar',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: ListTile(
                      title: Text(
                        '5',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'Courses enrolled',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.purple, Colors.pinkAccent],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight,
                          stops: [0, 0.7],
                        ),
                        border: Border.all(width: 2,color: Colors.purple),
                        borderRadius: const BorderRadius.all(const Radius.circular(10))
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.lightBlue, Colors.pinkAccent],
                          begin: Alignment.centerRight,
                          end: Alignment.bottomLeft,
                          stops: [0, 0.9],
                        ),
                        border: Border.all(width: 2,color: Colors.purple),
                        borderRadius: const BorderRadius.all(const Radius.circular(10))
                    ),
                    child: ListTile(
                      title: Text(
                        '2',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'Ongoing Courses',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

					Container(
              child: Column(
                children: <Widget>[
									 ListTile(
                    title: Text(
                      'Certificates',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   
                  ),
									
									Divider(),
									 ListTile(
                    title: Text(
                      'FAQs',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   
                  ),
									Divider(),

									 ListTile(
                    title: Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   
                  ),
                  Divider(),
									ListTile(
                    title: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   
                  ),

                  Divider(),
                  ListTile(
                    title: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'kalibilli@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  
                  Divider(),
                  
									ListTile(
                    title: Text(
                      'Sign Out',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
									),
                ],
              ),
					),
        ],
      ),
    );
  }
}