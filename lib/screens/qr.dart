import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/paymentscreen.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class Qr extends StatefulWidget {
  @override
  _Qr createState() => _Qr();
}

class _Qr extends State<Qr> {
  @override
  void initState() {
    super.initState();
    _qrScanner();
  }

  Future _qrScanner() async {
    var cameraStatus = await Permission.camera.status;
    if (cameraStatus.isGranted) {
      String? qrdata = await scanner.scan();
      print(qrdata);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Payment(
              text: qrdata,
            ),
          ));
    } else {
      var isGrant = await Permission.camera.request();
      if (isGrant.isGranted) {
        String? qrdata = await scanner.scan();
        print(qrdata);
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Payment(
                text: qrdata,
              ),
            ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan & Pay'),
      ),
    );
  }
}
