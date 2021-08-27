import 'package:flutter/material.dart';

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
        title: Text("QR Scan"),
      ),
      body: Container(
        child: Container(
          color: Colors.red,
          height: (MediaQuery.of(context).size.height),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: (MediaQuery.of(context).size.height) -
                      AppBar().preferredSize.height -
                      kToolbarHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/QR.jpg",
                    ),
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    radius: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Hero(
                        tag: "Scan QR",
                        child: Container(
                          width: ((MediaQuery.of(context).size.width) / 2) - 45,
                          height: 50,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              primary: Colors.red,
                              onSurface: Colors.blue,
                              backgroundColor: Colors.lightBlue[100],
                              shadowColor: Colors.blue,
                              shape: StadiumBorder(),
                              side: BorderSide(
                                width: 3,
                                color: Colors.blue,
                              ),
                            ),
                            child: Text(
                              "Scan QR",
                              style: TextStyle(fontSize: 17),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ScanQR()));
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
