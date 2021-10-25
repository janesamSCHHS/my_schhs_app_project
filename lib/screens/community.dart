import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: FittedBox(
          fit: BoxFit.contain,
          child: Text('Our community',
              style: Theme.of(context).textTheme.headline3),
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
                      "What's out and about near me?",
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
