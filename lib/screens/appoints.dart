import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFf0e28e),
        title: Text(
          "Appointments and Referrals",
          style: TextStyle(fontSize: 14.0,
              color: Colors.grey.shade600),
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
                      "Appointments page",
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
