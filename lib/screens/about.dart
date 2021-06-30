import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:schhs_my_app_v2a/screens/home.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF228375),
        title: Text("SCHHS general information"),
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
      body: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10.0, right: 0.0, bottom: 0.0),
              child: Text('About us', style: Theme.of(context).textTheme.headline5,),
            )
          ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    padding: EdgeInsets.only(left: 20.0, top: 14.0, right: 20.0, bottom: 30.0),
                    child: Center(
                        child: InkWell(
                          child: RichText(
                            text: TextSpan(
                                text:
                                'Sunshine Coast Hospital and Health Service (SCHHS) is the major provider of public health services, health education and research across the Sunshine Coast, Gympie and Noosa local government areas.\n \nWhile Sunshine Coast University Hospital is the region’s centre for acute, critical and specialised care, all our facilities play unique and complementary roles including Nambour General Hospital, Caloundra Health Service, Gympie Hospital, Maleny Soldiers Memorial Hospital, Glenbrook Residential Aged Care Facility, Maroochydore Community Hub, Janelle Killick Community Care Unit and other community health services.\n \nWe work in partnership with ',
                                style:
                                Theme.of(context).textTheme.bodyText1,
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                      'Central Queensland, Wide Bay, Sunshine Coast PHN',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6,
                                      recognizer: TapGestureRecognizer()..onTap = () {
                                          launch(
                                              'https://www.ourphn.org.au/');
                                        }),
                                  TextSpan(
                                    text:
                                    ' the regions primary health provider.',
                                    style: Theme.of(context).textTheme.bodyText1,
                                  )
                                ]),
                          ),
                        ))),
              )
            ],
          ),
          // Row 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                      color: Colors.teal.shade300, height: 120.0, width: 40, child: Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text('Our vision', style: TextStyle(fontFamily: 'Meta', fontSize: 20.0, fontWeight: FontWeight.bold, letterSpacing: 1.0),),
                            SizedBox(height: 20.0,),
                            Text('Health and wellbeing through exceptional care.', style: TextStyle(fontFamily: 'Meta', fontSize: 16.0,),),
                          ],
                        ),
                      ))),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                      color: Colors.teal.shade500, height: 160.0, width: 40, child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Our purpose', style: TextStyle(fontFamily: 'Meta', fontSize: 20.0,fontWeight: FontWeight.bold, letterSpacing: 1.0),),
                        SizedBox(height: 20.0,),
                        Text('To provide high quality healthcare in collaboration with our communities and partners, enhanced through education and research.', style: TextStyle(fontFamily: 'Meta', fontSize: 16.0,),),
                      ],
                    ),
                  ))),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                      color: Color(0xFF228375), width: 40, child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Our values', style: TextStyle(fontFamily: 'Meta', fontSize: 20.0,fontWeight: FontWeight.bold, letterSpacing: 1.0),),
                        SizedBox(height: 20.0,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assets/images/values.jpg')),
                        )
                        ],
                    ),
                  ))),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                      color: Colors.white, width: 40, child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('In an Emergency ', style:Theme.of(context).textTheme.headline5),
                        Text('Should I go to the emergency department? ', style:Theme.of(context).textTheme.headline4),

                      ],
                    ),
                  ))),
                ),
              ),
            ],
          ),


        ],),
      ),
    );
  }
}