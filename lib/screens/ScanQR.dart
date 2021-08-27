import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';

class ScanQR extends StatefulWidget {
  ScanQR({Key? key}) : super(key: key);

  @override
  _ScanQRState createState() => _ScanQRState();
}

String qrData = "No data scanned";
var data;
bool hasdata = false;

class _ScanQRState extends State<ScanQR> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "Scan QR",
      child: Scaffold(
        appBar: AppBar(
          title: Text("Scan your QR code"),
        ),
        body: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: ((MediaQuery.of(context).size.width)),
                height: 35,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    elevation: 4,
                    primary: Colors.indigo,
                    onSurface: Colors.blue,
                    backgroundColor: Colors.lightBlue[100],
                    shadowColor: Colors.blue,
                    shape: StadiumBorder(),
                    side: BorderSide(
                      width: 2,
                      color: Colors.blue,
                    ),
                  ),
                  child: Text(
                    "Open camera",
                    style: TextStyle(fontSize: 17),
                  ),
                  onPressed: () async {
                    var options = ScanOptions(
                      autoEnableFlash: false,
                    );
                    var data = await BarcodeScanner.scan(options: options);
                    setState(() {
                      qrData = data.rawContent.toString();
                      hasdata = true;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
