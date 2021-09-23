import 'package:flutter/material.dart';
import 'signup.dart';
import 'mylearningscreen.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "LOGIN",
            style:
                TextStyle(fontSize: 50, color: Colors.black, wordSpacing: 2.0),
          ),
          SizedBox(height: 70),
          Container(
              margin: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        hintText: 'Enter your Email',
                        prefixIcon: Icon(Icons.alternate_email),
                        hintStyle: TextStyle(color: Colors.black87),
                        fillColor: Colors.black,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        hintText: 'Enter your Password',
                        prefixIcon: Icon(Icons.password),
                        hintStyle: TextStyle(color: Colors.black87),
                        fillColor: Colors.black,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.grey, width: 2),
                      ),
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                                fontSize: 15, color: Colors.black87),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Forgot Password',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                  ])),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              icon: Image.asset('Assets/google-logo.png'),
              iconSize: 30.0,
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('Assets/fb.png'),
              iconSize: 30.0,
              onPressed: () {},
            ),
          ]),
          MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                  side: BorderSide(color: Colors.black87)),
              textColor: Colors.black,
              child: new Text("Login"),
              onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => myLearningscreen()))
                ),
          SizedBox(height: 10),
          Text(
            "or",
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          SizedBox(height: 20),
          ButtonTheme(
            minWidth: 300.0,
            child: MaterialButton(
                color: Color(0xff0095FF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0),
                    side: BorderSide(color: Colors.black)),
                textColor: Colors.white,
                child: new Text("Register New Account"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                }),
          )
        ]),
      ),
    );
  }
}
