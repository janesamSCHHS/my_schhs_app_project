import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:schhs_app2021/screens/home.dart';
import 'package:url_launcher/url_launcher.dart';

class CalMore extends StatefulWidget {
  @override
  _CalMoreState createState() => _CalMoreState();
}

class _CalMoreState extends State<CalMore> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Color(0xFF3ab2c2),
          title: Text("Caloundra Information",
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
                        image: AssetImage('assets/images/caloundra.jpg'),
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
                                      '\n\nCaloundra Health Service is located on West Terrace in Caloundra',
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
                                        '\n\nFree parking is available on the hospital grounds and in the surrounding streets.\n\nDisabled parking is available in front of the main entrance.',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  TextSpan(
                                      text: '',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch('');
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
                                        '\n\nBus: Caloundra Health Service is serviced by Translink buses 603, 609 and 605 (605 stops on Caloundra Road, not West Terrace). The bus stop is located on West Terrace.  \n\nUse the Translink Journey Planner or find a timetable to view the best public transport options for your trip. You can also call 13 12 30 for more information about bus transport options.',
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
                'Our facilities The Sunshine Coast HHS provides services through:\n???	Sunshine Coast University Hospital'
                */ /*'\n???	Nambour General Hospital'
                '\n???	Caloundra Health Service'
                '\n???	Gympie Hospital'
                '\n???	Maleny Soldiers Memorial Hospital'
                '\nand a comprehensive range of sub-acute, ambulatory and extended care, community health, mental health and oral health services, \nand an aged care services at the Glenbrook Residential Aged Care Facility.\nThe Sunshine Coast University Hospital (SCUH) at Birtinya commenced services in March 2017, and will expand to a 738-bed facility. SCUH offers a range of new and expanded services for the Sunshine Coast, including the Sunshine Coast Health Institute ??? a unique partnership for education and research - on site.\nThrough the opening of SCUH and the transformation of existing facilities and Nambour and Caloundra, the Sunshine Coast HHS is investing to meet the growing healthcare needs of our community and deliver exceptional care into the future.\n \nCar parking, transport and maps\n???	Location\n???	Maps\n???	Parking (including disabled parking)\n???	Public transport'*/ /*
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
                'Our facilities The Sunshine Coast HHS provides services through:\n???	Sunshine Coast University Hospital\n???	Nambour General Hospital???	Caloundra Health Service\n???	Gympie Hospital\n???	Maleny Soldiers Memorial Hospitaland a comprehensive range of sub-acute, ambulatory and extended care, community health, mental health and oral health services, \nand an aged care services at the Glenbrook Residential Aged Care Facility.\nThe Sunshine Coast University Hospital (SCUH) at Birtinya commenced services in March 2017, and will expand to a 738-bed facility. SCUH offers a range of new and expanded services for the Sunshine Coast, including the Sunshine Coast Health Institute ??? a unique partnership for education and research - on site.\nThrough the opening of SCUH and the transformation of existing facilities and Nambour and Caloundra, the Sunshine Coast HHS is investing to meet the growing healthcare needs of our community and deliver exceptional care into the future.\n \nCar parking, transport and maps\n???	Location\n???	Maps\n???	Parking (including disabled parking)\n???	Public transport',
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
