import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schhs_my_app_v2a/screens/home.dart';

class OurFacilities extends StatefulWidget {

  @override
  _OurFacilitiesState createState() => _OurFacilitiesState();
}

class _OurFacilitiesState extends State<OurFacilities> {
  int index = 0;

  @override
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
    ],),
      body: Padding(
        child: Column(
          children: <Widget>[
            _stackedContainers(),
            _navigationButtons()
          ],
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
            color: Colors.orange.shade50,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Our facilities The Sunshine Coast HHS provides services through:\n•	Sunshine Coast University Hospital\n•	Nambour General Hospital•	Caloundra Health Service\n•	Gympie Hospital\n•	Maleny Soldiers Memorial Hospitaland a comprehensive range of sub-acute, ambulatory and extended care, community health, mental health and oral health services, \nand an aged care services at the Glenbrook Residential Aged Care Facility.\nThe Sunshine Coast University Hospital (SCUH) at Birtinya commenced services in March 2017, and will expand to a 738-bed facility. SCUH offers a range of new and expanded services for the Sunshine Coast, including the Sunshine Coast Health Institute – a unique partnership for education and research - on site.\nThrough the opening of SCUH and the transformation of existing facilities and Nambour and Caloundra, the Sunshine Coast HHS is investing to meet the growing healthcare needs of our community and deliver exceptional care into the future.\n \nCar parking, transport and maps\n•	Location\n•	Maps\n•	Parking (including disabled parking)\n•	Public transport',
                style: TextStyle(color: Colors.black87, fontSize: 12.0),
              ),
            ),
          ),
          Container(
              child: Center(
                  child: Image.asset("assets/images/ngh.jpg",)
              )
          ),
          Container(
              child: Center(
                  child: Image.asset("assets/images/scuh.jpg",)
              )
          ),
        ],
      ),
    );
  }

  Widget _navigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton(
          color: Color(0xFF3ab2c2),
          child: Text(
            'Information', style: TextStyle(fontSize: 16.0, color: Colors.white),),
          onPressed: () {
            setState(() {
              index = 0;
            });
          },
        ),
        FlatButton(
          color: Color(0xFF3ab2c2),
          child: Text(
            'Nambour', style: TextStyle(fontSize: 16.0, color: Colors.white),),
          onPressed: () {
            setState(() {
              index = 1;
            });
          },
        ),
        FlatButton(
          color: Color(0xFF3ab2c2),
          child: Text('SCUH',
            style: TextStyle(fontSize: 16.0, color: Colors.white),),
          onPressed: () {
            setState(() {
              index = 2;
            });
          },
        ),
      ],
    );
  }
}

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