import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Transaction extends StatefulWidget {
  final String? number;
  final String? name;
  final String? money;
  Transaction({Key? key, this.number, this.name, this.money}) : super(key: key);

  @override
  _TransactionState createState() => _TransactionState(number, name, money);
}

class _TransactionState extends State<Transaction> {
  final String? number;
  final String? name;
  final String? money;

  _TransactionState(this.number, this.name, this.money);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 100),
          child: Lottie.asset('assets/done.json',
              height: 250, width: 250, repeat: false),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'Payment of \u{20B9} $money to $name successful.',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  child: Text(
                    "view details".toUpperCase(),
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(10)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.deepPurple),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38.0),
                        side: BorderSide(color: Colors.deepPurple),
                      ),
                    ),
                  ),
                  onPressed: () => null),
              SizedBox(
                width: 10,
              ),
              TextButton(
                  child: Text(
                    "check balance".toUpperCase(),
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(10)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.deepPurple),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38.0),
                        side: BorderSide(color: Colors.deepPurple),
                      ),
                    ),
                  ),
                  onPressed: () => null),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 180),
          child: Divider(
            thickness: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            child: Text(
              "DONE",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]),
    );
  }
}
