import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                child: Text('transfer ruppes $money to $number and $name'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
