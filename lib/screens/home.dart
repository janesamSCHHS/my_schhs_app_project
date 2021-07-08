import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:schhs_my_app_v2a/screens/about.dart';
import 'package:schhs_my_app_v2a/screens/appoints.dart';
import 'package:schhs_my_app_v2a/screens/clinics.dart';
import 'package:schhs_my_app_v2a/screens/contact.dart';
import 'package:schhs_my_app_v2a/screens/facilities.dart';
import 'package:schhs_my_app_v2a/screens/medications.dart';
import 'package:schhs_my_app_v2a/services/ourFacilities.dart';
import 'package:schhs_my_app_v2a/widgets/drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'community.dart';
import 'emergency.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //print(data);
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerSlide(),
      appBar: AppBar(
        title: Text(
          'My SCHHS',
          style: Theme.of(context).textTheme.headline3,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(8.0)),
              child: TextButton.icon(
                  icon: Icon(
                    Icons.add_alert,
                    color: Colors.red,
                    size: 22.0,
                  ),
                  label: Text(
                    'EMERGENCY',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DemPage();
                      }),
                    );
                  }),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.blueGrey.shade100),
            child: Column(
                children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                   // width: MediaQuery.of(context).size.width,
                   // color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 0, horizontal: 20.0),
                      child: Text('Welcome',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0xFF3ab2c2),
                          fontWeight: FontWeight.bold,
                          fontSize: 26.0,
                        ),
                      ),
                    ),
                  ),
                  Container(  child: Image.asset(
                    'assets/images/circles2.png', fit: BoxFit.fill,
                    ),
                    alignment: Alignment.topRight,
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: Container(
                        // color: Colors.black,
                        padding: EdgeInsets.only(
                            left: 20.0, top: 4.0, right: 20.0, bottom: 20.0),
                        child: Center(
                            child: InkWell(
                          child: RichText(
                            text: TextSpan(
                                text:
                                    'Sunshine Coast Hospital and Health Service (SCHHS) is the major provider of public health services, health education and research across the Sunshine Coast, Gympie and Noosa local government areas.\n \nWhile Sunshine Coast University Hospital is the region’s centre for acute, critical and specialised care, all our facilities play unique and complementary roles including Nambour General Hospital, Caloundra Health Service, Gympie Hospital, Maleny Soldiers Memorial Hospital, Glenbrook Residential Aged Care Facility, Maroochydore Community Hub, Janelle Killick Community Care Unit and other community health services.\n \nWe work in partnership with ',
                                style: Theme.of(context).textTheme.bodyText1,
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Central Queensland, Wide Bay, Sunshine Coast PHN',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch('https://www.ourphn.org.au/');
                                        }),
                                  TextSpan(
                                    text:
                                        ' the regions primary health provider.',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  )
                                ]),
                          ),
                        ))),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ConstrainedBox(constraints: BoxConstraints.expand(width: 180, height: 80),
                          child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.teal.shade50, elevation: 4),
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return AboutPage();},),);},
                            child: Text('About', style: TextStyle(color: Color(0xFF3ab2c2), fontSize: 18),),
                            //icon: Icon(Icons.home_outlined,),),),
                        ),
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ConstrainedBox(constraints: BoxConstraints.tightFor(width: 180, height: 80),
                          child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Color(0xFF3ab2c2),elevation: 4,),
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return ClinicsPage();},),);},
                            child: Text('Clinics and \nday services', style: TextStyle(color: Colors.white,fontSize: 18),),
                            //icon: Icon(Icons.airline_seat_individual_suite_outlined),style: ElevatedButton.styleFrom(primary: Color(0xFF3ab2c2),),),
                        ),
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ConstrainedBox(constraints: BoxConstraints.tightFor(width: 180, height: 80),
                              child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.teal.shade50, elevation: 4),
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return DemPage();},),);},
                            child: Text('Emergency', style: TextStyle(color: Color(0xFF3ab2c2),fontSize: 18),),
                           // icon: Icon(Icons.healing_outlined),style: ElevatedButton.styleFrom(primary: Color(0xFF3ab2c2), ),),
                        ),
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ConstrainedBox(constraints: BoxConstraints.tightFor(width: 180, height: 80),
                          child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Color(0xFF3ab2c2),elevation: 4,),
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return MedicationsPage();},),);},
                            child: Text('Medications', style: TextStyle(color: Colors.white,fontSize: 18),),
                           // icon: Icon(Icons.warning_amber_rounded),style: ElevatedButton.styleFrom(primary: Color(0xFF3ab2c2),),),
                        ),
                      ),),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ConstrainedBox(constraints: BoxConstraints.expand(width: 180, height: 80),
                          child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Color(0xFF3ab2c2),elevation: 4,),
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return FacilitiesPage();},),);},
                            child: Text('Facilities', style: TextStyle(color: Colors.white, fontSize: 18),),
                            //icon: Icon(Icons.local_hospital_outlined),style: ElevatedButton.styleFrom(primary: Color(0xFF3ab2c2),),),
                        ),
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ConstrainedBox(constraints: BoxConstraints.tightFor(width: 180, height: 80),
                          child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.teal.shade50, elevation: 4,),
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return AppointPage();},),);},
                            child: Text('Appointments\nand referrals', style: TextStyle(color: Color(0xFF3ab2c2), fontSize: 18),),
                            //icon: Icon(Icons.calendar_today_outlined),style: ElevatedButton.styleFrom(primary: Color(0xFF3ab2c2),),),
                        ),
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ConstrainedBox(constraints: BoxConstraints.tightFor(width: 180, height: 80),
                          child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Color(0xFF3ab2c2),elevation: 4,),
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return CommunityPage();},),);},
                            child: Text('Community', style: TextStyle(color: Colors.white, fontSize: 18),),
                            //icon: Icon(Icons.people_outline),style: ElevatedButton.styleFrom(primary: Color(0xFF3ab2c2), ),),
                        ),
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ConstrainedBox(constraints: BoxConstraints.tightFor(width: 180, height: 80),
                          child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.teal.shade50, elevation: 4,),
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return ContactsPage();},),);},
                            child: Text('Contact', style: TextStyle(color: Color(0xFF3ab2c2), fontSize: 18),),
                            //icon: Icon(Icons.contact_phone_outlined),style: ElevatedButton.styleFrom(primary: Color(0xFF3ab2c2), ),),
                        ),
                      ),),
                    ],

                  ),

                ],
              ),SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF3ab2c2),
                ),
                // color: Color(0xFF3ab2c2),
                //child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, top: 14.0, right: 20.0, bottom: 5.0),
                          child: Container(
                            child: Text(
                              'Latest news',
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Container(
// color: Colors.black,
                              padding: EdgeInsets.only(
                                  left: 20.0,
                                  top: 4.0,
                                  right: 20.0,
                                  bottom: 40.0),
                              child: Center(
                                  child: InkWell(
                                child: RichText(
                                  text: TextSpan(
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'Positive wastewater detection in Noosa',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launch(
                                                  'https://app2.vision6.com.au/em/message/email/view.php?id=1542655&a=95430&k=FxSpRklE29vxMCaIgsX-2hg_VH_u1Zw_jf0hOWDuTfw');
                                            }),
                                      TextSpan(
                                        text:
                                            ' \nFragments of SARS-CoV-2 have been detected at the Noosa wastewater treatment plant.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      TextSpan(
                                          text:
                                              '\n \nGympie women urged to book in for a breast screen',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launch(
                                                  'https://app2.vision6.com.au/em/message/email/view.php?id=1541859&a=95430&k=Aqvf8fnY_tgNoXszNMoHTeKOPRfx2BYtn18wz7xfPKw');
                                            }),
                                      TextSpan(
                                        text:
                                            ' \nGympie women aged over 50 years old are being urged to book in for their regular free breast screen every two years.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      TextSpan(
                                          text:
                                              '\n \nPoint Your Health in the Right Direction',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launch(
                                                  'https://app.vision6.com.au/em/message/email/view.php?id=1539956&a=95430&k=SLo13YujFn9Uyrm61O6LefZIwmtEzWXRU5Ad_CMC5Jg');
                                            }),
                                      TextSpan(
                                        text:
                                            ' \nThe Health Compass lists a broad range of local, low cost services and activities available across the Sunshine Coast and Gympie to support physical, emotional and social health.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ],
                                  ),
                                ),
                              ))),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
