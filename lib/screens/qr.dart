import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class Qr extends StatefulWidget {
  @override
  _Qr createState() => _Qr();
}

class _Qr extends State<Qr> {
  Future _qrScanner() async {
    var cameraStatus = await Permission.camera.status;
    if (cameraStatus.isGranted) {
      String? qrdata = await scanner.scan();
      print(qrdata);
    } else {
      var isGrant = await Permission.camera.request();
      if (isGrant.isGranted) {
        String? qrdata = await scanner.scan();
        print(qrdata);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Scan & Pay'),
        ),
        body: Container(
          child: Center(
            child: ElevatedButton(
              child: Text('Scan'),
              onPressed: () {
                _qrScanner();
              },
            ),
          ),
        ));
  }
}
