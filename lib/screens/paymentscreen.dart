import 'package:flutter/material.dart';
import 'transaction.dart';

class Payment extends StatelessWidget {
  final String? text;
  Payment({Key? key, @required this.text}) : super(key: key);

  final _moneyController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String ans = "";

    if (text != null) {
      for (int i = 0; i < text!.length; i++) {
        if (text![i] == '=') {
          if (text![i + 1].contains(RegExp(r'[A-Z]'))) {
            for (int j = 1; j <= 13; j++) {
              ans += text![i + j];
            }
            break;
          } else {
            for (int j = 1; j <= 10; j++) {
              ans += text![i + j];
            }
            break;
          }
        }
      }
    }

    print(ans);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Send'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.help_outline_outlined),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(left: 0),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle_outlined),
              iconSize: 50,
            ),
            title: Text('User name here'),
            subtitle: Text(ans),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _moneyController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Colors.deepPurple, width: 2.0),
                ),
                hintText: 'Enter amount',
                prefixIcon: Icon(Icons.money),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Colors.deepPurple, width: 2.0),
                ),
                hintText: 'Add a message (optional)',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/psl.jpg'),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MaterialButton(
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Transaction(
                          number: ans,
                          name: _messageController.text,
                          money: _moneyController.text,
                        ),
                      ))
                },
                child: Text('Send'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
