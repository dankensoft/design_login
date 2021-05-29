import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LogInDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          children: [Page1()],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Stack(
      children: [BackgroundPage1(), ContentPage1()],
    );
  }
}

class BackgroundPage1 extends StatelessWidget {
  const BackgroundPage1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      alignment: Alignment.topCenter,
    );
  }
}

class ContentPage1 extends StatelessWidget {
  const ContentPage1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.trip_origin,
              size: 75,
              color: Colors.black,
            ),
            Expanded(child: Container()),
            Text(
              'Start',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MS Sans Serif'),
            ),
            Text(
              'your',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MS Sans Serif'),
            ),
            Text(
              'adventure',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MS Sans Serif'),
            ),
            Expanded(child: Container()),
            Expanded(child: Container()),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orangeAccent.withOpacity(1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          //offset: Offset(0, 3), // changes position of shadow
                        )
                      ]),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'MS Sans Serif',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    shape: StadiumBorder()),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 50.0),
                child: const Text.rich(
                  TextSpan(
                    text: 'You done have an account?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'MS Sans Serif'), // default text style
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Sign up here.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'MS Sans Serif')),
                    ],
                  ),
                ),
                /*child: Text(
                  'You done have an account?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'MS Sans Serif'),
                ),*/
              ),
            ),
          ],
        ),
      ),
    );
  }
}