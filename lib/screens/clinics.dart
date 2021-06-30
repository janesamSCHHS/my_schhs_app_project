import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClinicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFc1c1b2),
        title: Text(
          "Clinics and Day Services",
          style: TextStyle(fontSize: 26.0),
        ),
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