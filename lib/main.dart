import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//TODO//import 'dart:async'; for Future

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      TODO スプラッシュ実装
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/signup': (context) => SignupScreen(),
//        '/properties': (context) => PropertiesScreen(),
//        '/property1': (context) => Property1Screen(),
      },
      title: 'ShareRo Prototype',
      theme: ThemeData(fontFamily: 'Futura'),
    );
  }
}

class SplashPage extends StatefulWidget {
  SplashPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
//  TODO 自動画面遷移
//  @override
//  void initState() {
//    super.initState();
//
//    new Future.delayed(
//      Duration(
//        seconds: 3, [FutureOr<T>]
//      ),
//    ).then((value) => handleTimeout());
//  }

//スプラッシュ

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              child: Image.asset(
                'assets/sharero.png',
              ),
            ),
            SizedBox(height: 18.0),
            FlatButton(
              child: Text(
                'ShareRo',
                style: TextStyle(
                    fontFamily: 'Apple SD Gothic Neo',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.grey[500]),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/signup');
              },
            ),
          ],
        ),
      ),
    );
  }
}

//Sing-up Page
class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Image.asset(
            'images/loginimage.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned(
            bottom: 120,
            right: 20,
            left: 20,
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'LOGIN WITH FACEBOOK',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Futura',
                  ),
                ),
              ),
              height: 50.0,
              width: 200,
              color: Colors.indigo[900],
            ),
          ),
          Positioned(
            bottom: 70,
            left: 20,
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Futura',
                  ),
                ),
              ),
              height: 50.0,
              width: 100,
              color: Colors.redAccent[100],
            ),
          ),
        ],
      ),
    );
  }
}

//物件掲載スクリーン
//
//class PropertiesScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.indigo[900],
//        title: Text(
//          'ShareRo',
//          style: TextStyle(
//            color: Colors.white,
//          ),
//        ),
//      ),
//      backgroundColor: Colors.white,
//      body: SingleChildScrollView(
//        child: Column(
//          children: <Widget>[
//            Container(
//              height: 70.0,
//              child: Align(
//                alignment: Alignment.topLeft,
//                child: Padding(
//                  padding: const EdgeInsets.fromLTRB(13.0, 15.0, 15.0, 0.0),
//                  child: Text(
//                    'We can help you to find a host for home-sharing',
//                    style: TextStyle(
//                      fontSize: 20.0,
//                      color: Colors.grey[600],
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//
//            FlatButton(
//              padding: EdgeInsets.all(0.0),
//              child: Card(
//                color: Colors.grey[200],
//                elevation: 8.0,
//                child: Column(
//                  children: <Widget>[
//                    Container(
//                      child: Image.asset(
//                        'images/property1.jpg',
//                      ),
//                    ),
//                    Row(
//                      children: <Widget>[
////                      値段と最寄り駅までの時間
//                        Column(
//                          children: <Widget>[
//                            Row(
//                              children: <Widget>[
//                                Icon(
//                                  Icons.attach_money,
//                                  size: 15.0,
//                                ),
//                                Text('50000/月',
//                                    style: TextStyle(
//                                      fontSize: 15.0,
//                                      color: Colors.orange[900],
//                                      fontWeight: FontWeight.bold,
//                                    )),
//                              ],
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              children: <Widget>[
//                                Icon(
//                                  Icons.directions_walk,
//                                  size: 15.0,
//                                ),
//                                Text(
//                                  '5mins to 東京駅',
//                                  style: TextStyle(
//                                    fontSize: 15.0,
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                        Spacer(
//                          flex: 1,
//                        ),
////                       HOST写真
//                        Row(
//                          children: <Widget>[
//                            Container(
//                              padding: EdgeInsets.fromLTRB(0.0, 0, 5.0, 25.0),
//                              child: Text(
//                                '春さん',
//                                style: TextStyle(
//                                  fontSize: 15.0,
//                                  color: Colors.grey[800],
//                                ),
//                              ),
//                            ),
//                            Container(
//                              child: CircleAvatar(
//                                backgroundImage:
//                                    ExactAssetImage('profiles/profile1.png'),
//                                minRadius: 30.0,
//                                maxRadius: 40.0,
//                              ),
//                              padding: const EdgeInsets.all(8.0),
//                            ),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//              ),
//              onPressed: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                    builder: (context) => Property1Screen(),
//                  ),
//                );
//              },
//            ),
//            SizedBox(height: 20.0),
////             TODO  2枚目 Card
//            FlatButton(
//              padding: EdgeInsets.all(0.0),
//              child: Card(
//                color: Colors.grey[200],
//                elevation: 8.0,
//                child: Column(
//                  children: <Widget>[
//                    Container(
//                      child: Image.asset(
//                        'images/property2.jpg',
//                      ),
//                    ),
//                    Row(
//                      children: <Widget>[
////                      値段と最寄り駅までの時間
//                        Column(
//                          children: <Widget>[
//                            Row(
//                              children: <Widget>[
//                                Icon(
//                                  Icons.attach_money,
//                                  size: 15.0,
//                                ),
//                                Text('50000/月',
//                                    style: TextStyle(
//                                      fontSize: 15.0,
//                                      color: Colors.orange[900],
//                                      fontWeight: FontWeight.bold,
//                                    )),
//                              ],
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              children: <Widget>[
//                                Icon(
//                                  Icons.directions_walk,
//                                  size: 15.0,
//                                ),
//                                Text(
//                                  '5mins to 東京駅',
//                                  style: TextStyle(
//                                    fontSize: 15.0,
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                        Spacer(
//                          flex: 1,
//                        ),
////                       HOST写真
//                        Row(
//                          children: <Widget>[
//                            Container(
//                              padding: EdgeInsets.fromLTRB(0.0, 0, 5.0, 25.0),
//                              child: Text(
//                                '七海さん',
//                                style: TextStyle(
//                                  fontSize: 15.0,
//                                  color: Colors.grey[800],
//                                ),
//                              ),
//                            ),
//                            Container(
//                              child: CircleAvatar(
//                                backgroundImage:
//                                    ExactAssetImage('profiles/profile2.jpg'),
//                                minRadius: 30.0,
//                                maxRadius: 40.0,
//                              ),
//                              padding: const EdgeInsets.all(8.0),
//                            ),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//              ),
//              onPressed: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                    builder: (context) => Property2Screen(),
//                  ),
//                );
//              },
//            ),
//            SizedBox(height: 20.0),
////             TODO  3枚目 Card
//            FlatButton(
//              padding: EdgeInsets.all(0.0),
//              child: Card(
//                color: Colors.grey[200],
//                elevation: 8.0,
//                child: Column(
//                  children: <Widget>[
//                    Container(
//                      child: Image.asset(
//                        'images/property3.jpg',
//                      ),
//                    ),
//                    Row(
//                      children: <Widget>[
////                      値段と最寄り駅までの時間
//                        Column(
//                          children: <Widget>[
//                            Row(
//                              children: <Widget>[
//                                Icon(
//                                  Icons.attach_money,
//                                  size: 15.0,
//                                ),
//                                Text('50000/月',
//                                    style: TextStyle(
//                                      fontSize: 15.0,
//                                      color: Colors.orange[900],
//                                      fontWeight: FontWeight.bold,
//                                    )),
//                              ],
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              children: <Widget>[
//                                Icon(
//                                  Icons.directions_walk,
//                                  size: 15.0,
//                                ),
//                                Text(
//                                  '5mins to 東京駅',
//                                  style: TextStyle(
//                                    fontSize: 15.0,
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                        Spacer(
//                          flex: 1,
//                        ),
////                       HOST写真
//                        Row(
//                          children: <Widget>[
//                            Container(
//                              padding: EdgeInsets.fromLTRB(0.0, 0, 5.0, 25.0),
//                              child: Text(
//                                '誠さん',
//                                style: TextStyle(
//                                  fontSize: 15.0,
//                                  color: Colors.grey[800],
//                                ),
//                              ),
//                            ),
//                            Container(
//                              child: CircleAvatar(
//                                backgroundImage:
//                                    ExactAssetImage('profiles/profile3.png'),
//                                minRadius: 30.0,
//                                maxRadius: 40.0,
//                              ),
//                              padding: const EdgeInsets.all(8.0),
//                            ),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//              ),
//              onPressed: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                    builder: (context) => Property3Screen(),
//                  ),
//                );
//              },
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
////物件1
//class Property1Screen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.grey[300],
//      body: SingleChildScrollView(
//        child: Column(
//          children: <Widget>[
//            Stack(
//              children: <Widget>[
//                SizedBox(
//                  height: 300,
//                  width: 400,
//                  child: Carousel(
//                    boxFit: BoxFit.cover,
//                    dotSize: 5.0,
//                    autoplay: false,
//                    animationCurve: Curves.fastOutSlowIn,
//                    animationDuration: Duration(milliseconds: 800),
//                    dotBgColor: Colors.transparent,
//                    dotVerticalPadding: 5.0,
//                    images: [
//                      Image.asset(
//                        'images/property2.jpg',
//                        fit: BoxFit.fill,
//                      ),
//                      Image.asset(
//                        'images/property1.jpg',
//                        fit: BoxFit.fill,
//                      ),
//                      Image.asset(
//                        'images/property3.jpg',
//                        fit: BoxFit.fill,
//                      ),
//                    ],
//                  ),
//                ),
//                SafeArea(
//                  child: FlatButton(
//                    child: Align(
//                      alignment: Alignment.topLeft,
//                      child: Padding(
//                        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
//                        child: Icon(
//                          Icons.arrow_back_ios,
//                          color: Colors.white70,
//                        ),
//                      ),
//                    ),
//                    onPressed: () {
//                      Navigator.pop(context);
//                    },
//                  ),
//                ),
//              ],
//            ),
//            Container(
//              height: 80.0,
//              child: Align(
//                alignment: Alignment.topLeft,
//                child: Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Text(
//                        'Green Wall House',
//                        style: TextStyle(fontSize: 20.0),
//                      ),
//                      SizedBox(height: 5.0),
//                      Text(
//                        'Tokyo Station, Japan',
//                        style: TextStyle(fontSize: 15.0),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//            Container(
//              height: 80.0,
//              child: Align(
//                alignment: Alignment.topLeft,
//                child: Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Text(
//                    'This upscale, contemporary hotel is 2 km from Hazrat Shahjala International Airport and 11 km from Jatiyo Sangsad Bhaban,the Bangladesh Parliament complex.',
//                    style: TextStyle(
//                      color: Colors.grey,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            Container(
//              height: 50.0,
//              child: Align(
//                alignment: Alignment.topLeft,
//                child: Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Text(
//                    'Verified by Driver Liscence & Passport',
//                    style: TextStyle(
//                      color: Colors.indigo[700],
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            Column(
//              children: <Widget>[
//                Container(
//                  child: Align(
//                    alignment: Alignment.topLeft,
//                    child: Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: Text(
//                        'About Host',
//                        style: TextStyle(
//                          fontWeight: FontWeight.bold,
//                        ),
//                      ),
//                    ),
//                  ),
//                ),
//                Row(
//                  children: <Widget>[
//                    Container(
//                      child: CircleAvatar(
//                        backgroundImage:
//                            ExactAssetImage('profiles/profile1.png'),
//                        minRadius: 30.0,
//                        maxRadius: 40.0,
//                      ),
//                      padding: const EdgeInsets.all(8.0),
//                    ),
//                    Text(
//                      'Haruさん\nメカニカルエンジニア\n75歳 - 1人暮らし',
//                      style: TextStyle(
//                        fontSize: 13.0,
//                        color: Colors.grey,
//                      ),
//                    ),
//                  ],
//                ),
//              ],
//            ),
//            Container(
//              height: 80.0,
//              child: Align(
//                alignment: Alignment.topLeft,
//                child: Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Text(
//                    'こんにちは、春です。',
//                    style: TextStyle(
//                      color: Colors.grey,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            Column(
//              children: <Widget>[
//                Container(
//                  child: Align(
//                    alignment: Alignment.topLeft,
//                    child: Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: Text(
//                        'House Rules',
//                        style: TextStyle(
//                          fontWeight: FontWeight.bold,
//                        ),
//                      ),
//                    ),
//                  ),
//                ),
//                Align(
//                  alignment: Alignment.topLeft,
//                  child: Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Text(
//                      'No Smoking \nNo pets\nInvite friends with mutual agreement\nInvite friends for a stay over with mutual agreement\nUse of Kitchen, Laundry, WifI, TV',
//                      style: TextStyle(
//                        color: Colors.grey,
//                      ),
//                    ),
//                  ),
//                ),
//              ],
//            ),
//            BottomNavigationBar(
//              type: BottomNavigationBarType.fixed,
//              items: const <BottomNavigationBarItem>[
//                BottomNavigationBarItem(
//                  icon: Icon(Icons.home),
//                  title: Text('Home'),
//                ),
//                BottomNavigationBarItem(
//                  icon: Icon(Icons.business),
//                  title: Text('Business'),
//                ),
//                BottomNavigationBarItem(
//                  icon: Icon(Icons.school),
//                  title: Text('School'),
//                ),
//              ],
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
////物件2
//class Property2Screen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Column(
//          children: <Widget>[
//            Container(
//              child: Image.asset('images/property2.jpg'),
//            ),
//            Row(
//              children: [
//                Column(
//                  children: <Widget>[
//                    Container(
//                      child: Text(
//                        '50000/月',
//                        style: TextStyle(
//                          fontSize: 15.0,
//                          color: Colors.orange[900],
//                          fontWeight: FontWeight.bold,
//                        ),
//                      ),
//                      padding: const EdgeInsets.all(8.0),
//                    ),
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      children: <Widget>[
//                        Container(
//                          child: Icon(
//                            Icons.directions_walk,
//                            size: 15.0,
//                          ),
//                        ),
//                        Padding(
//                          padding:
//                              const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
//                          child: Container(
//                            child: Text(
//                              '5mins to 東京駅',
//                              style: TextStyle(
//                                fontSize: 15.0,
//                              ),
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//                Spacer(
//                  flex: 1,
//                ),
//                Row(
//                  children: <Widget>[
//                    Container(
//                      padding: EdgeInsets.fromLTRB(0.0, 0, 5.0, 25.0),
//                      child: Text(
//                        '春さん',
//                        style: TextStyle(
//                          fontSize: 15.0,
//                          color: Colors.grey[800],
//                        ),
//                      ),
//                    ),
//                    Container(
//                      child: CircleAvatar(
//                        backgroundImage:
//                            ExactAssetImage('profiles/profile2.jpg'),
//                        minRadius: 30.0,
//                        maxRadius: 40.0,
//                      ),
//                      padding: const EdgeInsets.all(8.0),
//                    ),
//                  ],
//                ),
//              ],
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
////物件3
//class Property3Screen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Column(
//          children: <Widget>[
//            Container(
//              child: Image.asset('images/property3.jpg'),
//            ),
//            Row(
//              children: [
//                Column(
//                  children: <Widget>[
//                    Container(
//                      child: Text(
//                        '50000/月',
//                        style: TextStyle(
//                          fontSize: 15.0,
//                          color: Colors.orange[900],
//                          fontWeight: FontWeight.bold,
//                        ),
//                      ),
//                      padding: const EdgeInsets.all(8.0),
//                    ),
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      children: <Widget>[
//                        Container(
//                          child: Icon(
//                            Icons.directions_walk,
//                            size: 15.0,
//                          ),
//                        ),
//                        Padding(
//                          padding:
//                              const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
//                          child: Container(
//                            child: Text(
//                              '5mins to 東京駅',
//                              style: TextStyle(
//                                fontSize: 15.0,
//                              ),
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//                Spacer(
//                  flex: 1,
//                ),
//                Row(
//                  children: <Widget>[
//                    Container(
//                      padding: EdgeInsets.fromLTRB(0.0, 0, 5.0, 25.0),
//                      child: Text(
//                        '春さん',
//                        style: TextStyle(
//                          fontSize: 15.0,
//                          color: Colors.grey[800],
//                        ),
//                      ),
//                    ),
//                    Container(
//                      child: CircleAvatar(
//                        backgroundImage:
//                            ExactAssetImage('profiles/profile3.png'),
//                        minRadius: 30.0,
//                        maxRadius: 40.0,
//                      ),
//                      padding: const EdgeInsets.all(8.0),
//                    ),
//                  ],
//                ),
//              ],
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
