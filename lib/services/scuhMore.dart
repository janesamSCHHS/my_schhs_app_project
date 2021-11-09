import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:schhs_app2021/screens/home.dart';
import 'package:url_launcher/url_launcher.dart';

class SCUHmoreInfo extends StatefulWidget {
  @override
  _SCUHmoreInfoState createState() => _SCUHmoreInfoState();
}

class _SCUHmoreInfoState extends State<SCUHmoreInfo> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Color(0xFF3ab2c2),
          title: Text("SCUH information",
              style: Theme.of(context).textTheme.headline3),
          // title: Text('Facility information', style: Theme.of(context).textTheme.headline3),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: IconButton(
                  icon: Icon(
                    Icons.home,
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
          child: (Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        image: AssetImage('assets/images/scuh.jpg'),
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // PinchZoom(
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(12, 6, 6, 15),
                        child: RichText(
                          text: TextSpan(
                              text: 'Online facility map',
                              style: Theme.of(context).textTheme.headline6,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch(
                                      'https://www.health.qld.gov.au/__data/assets/pdf_file/0030/644655/scuh-pocket-map.pdf');
                                }),
                        ),
                      ),
                    ),
                    /* resetDuration: Duration(milliseconds: 100),
                      onZoomStart: () {
                        print('Start zooming');
                      },
                      onZoomEnd: () {
                        print('Stop zooming');
                      },
                    ),*/
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(12, 6, 6, 15),
                        child: RichText(
                          text: TextSpan(
                              text: 'Location',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(color: Color(0xFF3ab2c2)),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      '\n\nSunshine Coast University Hospital is located at: \n6 Doherty Street, Birtinya. \nYou can enter the hospital through the ground floor main entry near the drop-off zone off Hollows Lane, or via the all-weather link bridge from level 1 of the P1 carpark.',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white),
                      // height: 160,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(12, 6, 6, 15),
                          child: RichText(
                            text: TextSpan(
                                text: 'Parking',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: Color(0xFF3ab2c2)),
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        '\n\nParking at SCUH is safe, secure and easy to use with about 3500 spaces available for patients, visitors, staff and volunteers. Facilities include two multi-storey car parks, short-term parking, drop-off zones and ground-level parking.\nThe best parking for SCUH is in P1. Public parking is available on levels G, M and 1 with direct access to the hospital via the Level 1 link bridge. Staff parking is available on levels 2-5. \n\nParking operates on a user-pays system and is managed by Point Parking. Public parking costs \$2.50 for up to 30 minutes, to a maximum of \$15.20 per day. For more information about car parking rates, visit the Point Parking website.\nThe southern entrance car park is accessible from Frazer Lane and provides dedicated, authorised parking for patients who frequently visit SCUH for services such as cancer care or renal dialysis, and for after-hours maternity patients.',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  TextSpan(
                                      text:
                                          '\n\nGet more information about parking at SCUH',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch(
                                              'https://www.health.qld.gov.au/scuhospital/accessibility_and_parking');
                                        }),
                                ]),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white),
                      // height: 160,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(12, 6, 6, 15),
                          child: RichText(
                            text: TextSpan(
                                text: 'Public Transport',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: Color(0xFF3ab2c2)),
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        '\n\nA bus stop is located at the main entry of SCUH and close to the entry of the Sunshine Coast University Private Hospital. New bus routes have been implemented to service the Sunshine Coast Health Campus. \nUse the Translink Journey Planner or find a timetable to view the best public transport options for your trip. You can also call 13 12 30 for more information about bus transport options.',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  TextSpan(
                                      text: '\n\nTranslink Journey Planner',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch('http://jp.translink.com.au/');
                                        }),
                                  TextSpan(
                                      text: '\nFind a timetable',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch(
                                              'http://jp.translink.com.au/travel-information/network-information/buses/all-timetables');
                                        }),
                                ]),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          )),
        ));
  }
}
