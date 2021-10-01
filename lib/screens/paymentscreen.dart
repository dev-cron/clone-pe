import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  final String? text;
  const Payment({Key? key, @required this.text}) : super(key: key);
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
            title: Text(text ?? 'nothing'),
            subtitle: Text(ans),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
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
                onPressed: () => {},
                child: Text('Send'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//list view me wrap karke dekh overflow k liye
