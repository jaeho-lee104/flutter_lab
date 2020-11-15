import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profile.png'),
              ),
              Text(
                'LeeJaeho',
                style: TextStyle(
                  fontFamily: 'Goldman',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Goldman',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 2,
              ),
              getCard('010-8402-0915', Icons.phone),
              getCard('woghehdehd@naver.com', Icons.email)
            ],
          ),
        ),
      ),
    );
  }
}

Card getCard(String text, IconData icon) {
  return Card(
      color: Colors.white,
      margin: EdgeInsets.all(20.0),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.green,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.teal.shade900,
                fontFamily: 'Goldman',
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ));
}
