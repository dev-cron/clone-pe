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
          Navigator.pushNamed(context, '/pay');
        },
        child: Icon(Icons.account_circle_outlined),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/qr');
            },
            child: Icon(Icons.qr_code_scanner_outlined),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              Drawer();
            },
            child: Icon(
              Icons.notifications_none_outlined,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: GestureDetector(
            child: Icon(Icons.help_outline_outlined),
          ),
        )
      ],
      title: Text('Phone pe'),
    );
  }
}
