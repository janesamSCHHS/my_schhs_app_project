import 'package:barcode_scan2/model/scan_options.dart';
import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ScanQR.dart';

class ScanQRHome extends StatefulWidget {
  _ScanQRHomeState createState() => _ScanQRHomeState();
}

class _ScanQRHomeState extends State<ScanQRHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Scan directory QR code',
            style: Theme.of(context).textTheme.headline3),
      ),
      body: Container(
        color: Colors.white,
        height: (MediaQuery.of(context).size.height),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: (MediaQuery.of(context).size.height) -
                    AppBar().preferredSize.height -
                    kToolbarHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Color(0x2601ced3)),
                  child: Image(
                    image: AssetImage('assets/images/QR.png'),
                    height: 200,
                    // fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 30),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    height: 40,
                    child: Center(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          elevation: 4,
                          primary: Color(0x2601ced3),
                          onSurface: Color(0xFF3ab2c2),
                          backgroundColor: Color(0x2601ced3),
                          shadowColor: Colors.blue,
                          shape: StadiumBorder(),
                          side: BorderSide(
                            width: 2,
                            color: Color(0xFF3ab2c2),
                          ),
                        ),
                        child: Text(
                          "Open camera",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        onPressed: () async {
                          var options = ScanOptions(
                            autoEnableFlash: false,
                          );
                          var data =
                              await BarcodeScanner.scan(options: options);
                          setState(() {
                            qrData = data.rawContent.toString();
                            hasdata = true;
                          });
                        },
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Result:  \n${(qrData)}",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 20, color: Colors.black54),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: FloatingActionButton(
                        child: Text(
                          'GO',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Color(0xFF3ab2c2),
                        // focusColor: Colors.red,
                        // splashColor: Color(0xFF3ab2c2),
                        //  padding: EdgeInsets.all(20),
                        // color: Colors.blue,
                        // icon: Icon(
                        //  Icons.launch_rounded,
                        //   size: 30,
                        // ),
                        onPressed: hasdata
                            ? () async {
                                if (await canLaunch(qrData)) {
                                  // print(qrData);
                                  await launch(qrData);
                                } else {
                                  throw 'Error occurred';
                                }
                              }
                            : null,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
