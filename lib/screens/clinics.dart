import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home.dart';




class ClinicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Color(0xFFc1c1b2),
        title: Text("Clinics and Day Services"),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
                icon: Icon(
                  Icons.home_sharp,
                  size: 26.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }),
                  );
                }),
          ),
        ],
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                // height: 200.0,
                // width: 400.0,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Information on our Day Services and Clinics",
                      style: TextStyle(color: Colors.black87, fontSize: 16.0),
                    ),
                  ),
                ),
              ),
              SizedBox()
            ]),
      ),
    );
  }
}
