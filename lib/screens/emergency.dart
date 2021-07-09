import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:schhs_my_app_v2a/screens/home.dart';
import 'package:url_launcher/url_launcher.dart';

_makingPhoneCall() async {
  const url = 'tel:000';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_diallingNumber() async {
  const url = 'tel:13432584';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class DemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF44336),
        // centerTitle: true,
        title: Text("Emergency Department"),
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
        child: ConstrainedBox(
          constraints: BoxConstraints(
              // maxHeight: MediaQuery.of(context).size.height,
              ),
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          child: Image.asset(
                            'assets/images/ed1.jpg',
                            width: size.width * 0.60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'In an Emergency ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Text(
                        'Should I go to the emergency department?',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.teal.shade300,
                        ),
                        padding: const EdgeInsets.only(
                            left: 22, top: 6, right: 22, bottom: 10),
                        child: InkWell(
                          child: RichText(
                            text: TextSpan(
                              text:
                                  'Going to hospital when your sick or injured is not always the best option. '
                                  '\nFind a GP: ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'CLICK HERE',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(fontSize: 16),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      launch(
                                          'https://www.healthdirect.gov.au/australian-health-services');
                                    },
                                ),
                                TextSpan(text: ' OR call'),
                                TextSpan(
                                    text: ' 13 HEALTH \n(13 43 25 84)',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text:
                                        ' for free professional health advice, 24-hours a day.',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontSize: 18)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Center(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.5,
                                                    color: Color(0xFFF44336)),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: TextButton.icon(
                                              onPressed: _makingPhoneCall,
                                              icon: Icon(
                                                Icons.phone_in_talk_rounded,
                                                color: Color(0xFFF44336),
                                                size: 22.0,
                                              ),
                                              label: Text(
                                                'CALL 000',
                                                style: TextStyle(
                                                    color: Color(0xFFF44336),
                                                    fontSize: 18.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 40),
                                    Center(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.5,
                                                    color: Colors.teal),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: TextButton(
                                              onPressed: _diallingNumber,
                                              child: Text(
                                                '13 HEALTH',
                                              ),
                                              style: TextButton.styleFrom(
                                                  primary: Colors.teal,
                                                  backgroundColor: Colors.white,
                                                  textStyle: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: (Text('')),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 2, color: Colors.red,),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          child: RichText(
                            text: TextSpan(
                                text: 'Minor Injury and Illness Clinic (MIIC)!',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          ('\n\nVisit the Minor Injury and Illness Clinic if your GP is not available, you can visit the MIIC at Caloundra without an appointment. \nOpen 8.00am to 4.00pm, seven days a week.\nCaloundra Health Service – West Terrace'),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                            image:
                                AssetImage('assets/images/demPtJourney.png')),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Divider(thickness: 2, color: Colors.red,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          child: RichText(
                            text: TextSpan(
                              text:
                                  'Patient Journey through an emergency department \nTo watch video:  ',
                              style: Theme.of(context).textTheme.bodyText1,
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'CLICK HERE\n\n',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        launch('https://vimeo.com/193804106');
                                      }),
                                TextSpan(
                                  text:
                                      'Coronavirus (Covid-19)\nFor information about testing, vaccinations or patient resources ',
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            ' CLICK HERE',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launch(
                                                'https://www.health.qld.gov.au/sunshinecoast/covid-19');
                                          }),
                                    TextSpan(
                                      text: '  or phone 134 COVID (13 42 68).',
                                      style: TextStyle(
                                        fontFamily: 'Meta',
                                        fontSize: 13.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}