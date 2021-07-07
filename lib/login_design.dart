import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LogInDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height * 80,
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page2()),
                  );
                },
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

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: Stack(
        children: [BackgroundPage2(), ContentPage2()],
      ),
    );
  }
}

class BackgroundPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff333333),
      height: double.infinity,
      alignment: Alignment.topCenter,
    );
  }
}

class ContentPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 0,
              child: Icon(
                Icons.arrow_back,
                size: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30.0),
            Expanded(
              flex: 2,
              child: Text(
                'Log In',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MS Sans Serif'),
              ),
            ),
            // Formulario con Usuario y Contraseña para iniciar sesión
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                child: Container(
                  width: size.width * 0.85,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.alternate_email,
                                  color: Colors.grey),
                              hintText: 'example@email.com',
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.lock_outline, color: Colors.grey),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 60.0),
                      Container(
                        child: Center(
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
                                      color: Colors.black.withOpacity(1),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      //offset: Offset(0, 3), // changes position of shadow
                                    )
                                  ]),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 10),
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
                                backgroundColor: Colors.black,
                                shape: StadiumBorder()),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Center(
                          child: const Text.rich(
                            TextSpan(
                              text: 'First time here?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily:
                                      'MS Sans Serif'), // default text style
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Sign up here.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'MS Sans Serif')),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
