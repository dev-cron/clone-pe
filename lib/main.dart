import 'package:flutter/material.dart';
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
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                print("leading printed");
              },
              child: Icon(Icons.account_circle_outlined),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/qr');
                    print("qr clicked");
                  },
                  child: Icon(Icons.qr_code_2),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () {
                    Drawer();
                  },
                  child: Icon(
                    Icons.notifications,
                  ),
                ),
              ),
            ],
            title: Text('Phone pe'),
          ),
          body: Center(
              child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/phonepe.jpg'),
                    fit: BoxFit.cover)),
          ))),
    );
  }
}
