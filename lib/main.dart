import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/appbar.dart';
import 'qr.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // '/': (context) => App(),
        '/qr': (context) => Qr(),
      },
      theme: ThemeData(
        primaryColor: Colors.purple[800],
      ),
      home: Scaffold(
        appBar: new Myappbar(),
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/phonepe.jpg'),
                    fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
