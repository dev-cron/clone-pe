import 'package:flutter/material.dart';

class Myappbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
