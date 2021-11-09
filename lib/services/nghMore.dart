import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:schhs_app2021/screens/home.dart';
import 'package:url_launcher/url_launcher.dart';

class NGHmore extends StatefulWidget {
  @override
  _NGHmoreState createState() => _NGHmoreState();
}

class _NGHmoreState extends State<NGHmore> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Color(0xFF3ab2c2),
          title: Text("Nambour information",
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
                        image: AssetImage('assets/images/ngh.jpg'),
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
                                      'https://www.health.qld.gov.au/__data/assets/pdf_file/0027/149841/nambour-map.pdf');
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
                                      '\n\nNambour General Hospital is located on Hospital Road in Nambour. The hospital\'s main entrance drop off zone is only accessible from Hospital Road.',
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
                                        '\n\nPaid parking: A secure multi-storey car park is located on the hospital grounds, accessed from Nambour Mapleton Road (use the driveway next to the Red Cross Blood Bank). All proceeds support Wishlist, the Sunshine Coast Health Foundation.\nFree, three-hour parking is located along Hospital Rd, Nambour Mapleton Rd, surrounding streets and in the carpark behind the retail precinct on Hospital Road. \n\nDisabled parking is available near the main entrance (next to the Red Cross Blood Bank) and in front of the Emergency Department.',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  TextSpan(
                                      text:
                                          '\n\nGet more information about parking at Nambour General Hospital',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch(
                                              'https://www.health.qld.gov.au/__data/assets/pdf_file/0026/677321/ngh-conc-parking-factsheet.pdf');
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
                                        '\n\nBus: Nambour General Hospital is serviced by Translink buses 610, 612, 631 and 639. The bus stop for all routes is located on the hospital side of the road, outside the Emergency Department. \n\nUse the Translink Journey Planner or find a timetable to view the best public transport options for your trip. You can also call 13 12 30 for more information about bus transport options.',
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

/*body: Padding(
        child: Column(
          children: <Widget>[_stackedContainers(), _navigationButtons()],
        ),
        padding: EdgeInsets.all(5.0),
      ),
    );
  }

  Widget _stackedContainers() {
    return Expanded(
      child: IndexedStack(
        index: index,
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Our facilities The Sunshine Coast HHS provides services through:\n•	Sunshine Coast University Hospital'
                */ /*'\n•	Nambour General Hospital'
                '\n•	Caloundra Health Service'
                '\n•	Gympie Hospital'
                '\n•	Maleny Soldiers Memorial Hospital'
                '\nand a comprehensive range of sub-acute, ambulatory and extended care, community health, mental health and oral health services, \nand an aged care services at the Glenbrook Residential Aged Care Facility.\nThe Sunshine Coast University Hospital (SCUH) at Birtinya commenced services in March 2017, and will expand to a 738-bed facility. SCUH offers a range of new and expanded services for the Sunshine Coast, including the Sunshine Coast Health Institute – a unique partnership for education and research - on site.\nThrough the opening of SCUH and the transformation of existing facilities and Nambour and Caloundra, the Sunshine Coast HHS is investing to meet the growing healthcare needs of our community and deliver exceptional care into the future.\n \nCar parking, transport and maps\n•	Location\n•	Maps\n•	Parking (including disabled parking)\n•	Public transport'*/ /*
                ,
                style: TextStyle(color: Colors.black87, fontSize: 12.0),
              ),
            ),
          ),
          Container(
              child: Center(
                  child: Image.asset(
            "assets/images/caloundra.jpg",
          ))),
          Container(
              child: Center(
                  child: Image.asset(
            "assets/images/scuh.jpg",
          ))),
        ],
      ),
    );
  }

  Widget _navigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TextButton(
          child: Text(
            'Information',
            style: TextStyle(fontSize: 16.0, color: Colors.black87),
          ),
          onPressed: () {
            setState(() {
              index = 0;
            });
          },
        ),
        TextButton(
          child: Text(
            'Nambour',
            style: TextStyle(fontSize: 16.0, color: Colors.black87),
          ),
          onPressed: () {
            setState(() {
              index = 1;
            });
          },
        ),
        TextButton(
          child: Text(
            'SCUH',
            style: TextStyle(fontSize: 16.0, color: Colors.black87),
          ),
          onPressed: () {
            setState(() {
              index = 2;
            });
          },
        ),
      ],
    );
  }
}*/

/* @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3ab2c2),
        title: Text("Facility information"),
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
      ),*/

/*Stack(
          clipBehavior: Clip.none, alignment: Alignment.topCenter,
          fit: StackFit.passthrough,
          children: <Widget>[
      new Text(
      'Here is a Text Field at the bottom',
          style: new TextStyle(
            fontSize: 20.0,
            fontFamily: 'Roboto',
            color: Colors.black,
          )
      ),
          Container(
            color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Our facilities The Sunshine Coast HHS provides services through:\n•	Sunshine Coast University Hospital\n•	Nambour General Hospital•	Caloundra Health Service\n•	Gympie Hospital\n•	Maleny Soldiers Memorial Hospitaland a comprehensive range of sub-acute, ambulatory and extended care, community health, mental health and oral health services, \nand an aged care services at the Glenbrook Residential Aged Care Facility.\nThe Sunshine Coast University Hospital (SCUH) at Birtinya commenced services in March 2017, and will expand to a 738-bed facility. SCUH offers a range of new and expanded services for the Sunshine Coast, including the Sunshine Coast Health Institute – a unique partnership for education and research - on site.\nThrough the opening of SCUH and the transformation of existing facilities and Nambour and Caloundra, the Sunshine Coast HHS is investing to meet the growing healthcare needs of our community and deliver exceptional care into the future.\n \nCar parking, transport and maps\n•	Location\n•	Maps\n•	Parking (including disabled parking)\n•	Public transport',
                style: TextStyle(color: Colors.black87, fontSize: 12.0),
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: Text('second stack'),
          ),
          Container(
            color: Colors.blue,
            child: Text('third stack'),
          ),
        ],
      )*/
