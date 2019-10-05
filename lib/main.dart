import 'package:flutter/material.dart';
import './fluttercolor.dart';
import './login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/': (ctx) => MyHomePage(), '/login': (ctx) => LoginPage()},
      title: 'Behance Challenge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

    );
  }
}

class MyHomePage extends StatelessWidget {
  bool _isEnabled = true;
  Color mainColor = Color(0xffb74093);
  Color _sky_blue = FlutterColor("#0060FF");
  Color _grass_green = FlutterColor("#aee675");
  Color _solid_black = FlutterColor("#06213d");
  Color _background_color = FlutterColor("#f2f7ff");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background_color,
      body: SafeArea(
        top: _isEnabled,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 75.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image.network(
                      'https://ezfleets.com/backend/images/logo.png',
                      fit: BoxFit.cover,
                      width: 65,
                      height: 75,
                    ),
                    width: MediaQuery.of(context).size.width * 0.65,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(top: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: RaisedButton(
                      onPressed: () {},
                      elevation: 1,
                      color: _sky_blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text(
                          'Create an account',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Arimo-Bold'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(top: 55.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/login');
                      },
                        child: Text(
                      'LOG IN',
                      style: TextStyle(
                          color: _grass_green,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
