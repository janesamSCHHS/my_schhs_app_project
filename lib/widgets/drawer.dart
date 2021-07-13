import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schhs_my_app_v2a/screens/ToDo.dart';
import 'package:schhs_my_app_v2a/screens/about.dart';
import 'package:schhs_my_app_v2a/screens/appoints.dart';
import 'package:schhs_my_app_v2a/screens/clinics.dart';
import 'package:schhs_my_app_v2a/screens/community.dart';
import 'package:schhs_my_app_v2a/screens/contact.dart';
import 'package:schhs_my_app_v2a/screens/emergency.dart';
import 'package:schhs_my_app_v2a/screens/facilities.dart';
import 'package:schhs_my_app_v2a/screens/home.dart';
import '../med_list_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DrawerSlide extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 10);

  // const DrawerSlide({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color(0xff405061),
        child: ListView(
          padding: padding,
          children: <Widget>[
            DrawerHeader(
              curve: Curves.easeInOut,
              //child: Padding(
              // padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              child: Container(
                child: Image.asset('assets/images/SCHHS_white.png'),
              ),
            ),
            // ),
            Divider(color: Colors.white),
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              //color: Color(0xFF228375),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return AboutPage();
                    }),
                  );
                },
                leading: Icon(FontAwesomeIcons.info, color: Colors.grey.shade800,size: 20,),
                title: Text("About SCHHS",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline4),
              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              // color: Color(0xFF3ab2c2),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return FacilitiesPage();
                    }),
                  );
                },
                leading:
                Icon(FontAwesomeIcons.hospital, color: Colors.grey.shade800,size: 20,),
                title: Text("Our facilities",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline4),
              ),
            ), //facilities
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              //color: Color(0xFFc1c1b2),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ClinicsPage();
                    }),
                  );
                },
                leading: Icon(FontAwesomeIcons.wheelchair,
                  color: Colors.grey.shade800,size: 20,),
                title: Text("Clinics and day services",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline4),
              ),
            ), //appoints
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              // color: Color(0xFFf0e28e),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return AppointPage();
                    }),
                  );
                },
                leading:
                Icon(FontAwesomeIcons.calendarDay, color: Colors.grey.shade800,size: 20,),
                title: Text("Appointments and referrals",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline4),
              ),
            ), //clinics
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              // color: Color(0xFF405061),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return DemPage();
                    }),
                  );
                },
                leading: Icon(FontAwesomeIcons.hospitalUser, color: Colors.grey.shade800,size: 20,),
                title: Text("Emergency department",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline4),
              ),
            ), //emergency
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              // color: Colors.deepOrangeAccent,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return CommunityPage();
                    }),
                  );
                },
                leading:
                Icon(FontAwesomeIcons.utensils, color: Colors.grey.shade800,size: 20,),
                title: Text("Our community",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline4),
              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              // color: Colors.blueGrey,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return MedicationsListScreen ();
                    }),
                  );
                },
                leading:
                Icon(FontAwesomeIcons.tablets, color: Colors.grey.shade800,size: 20,),
                title: Text("My medications",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline4),
              ),
            ),
            //community
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              // color: Colors.blueGrey,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ContactsPage();
                    }),
                  );
                },
                leading:
                Icon(FontAwesomeIcons.phone, color: Colors.grey.shade800,size: 20,),
                title: Text("Contact us",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline4),
              ),
            ),
            //contact

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Ink(
                child: Container(
                  decoration: const ShapeDecoration(
                      color: Colors.white, shape: CircleBorder()),
                  height: 30.0,
                  width: 30.0,
                  alignment: Alignment.center,
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.angleLeft,
                      color: Colors.grey.shade800,
                      size: 16.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





  /*
            buildMenuItem(
              text: 'About SCHHS',
              icon: Icons.home_outlined,
            ),
           // const SizedBox(height: 5),
            buildMenuItem(
              text: 'Our facilities',
              icon: Icons.local_hospital_outlined,
            ),
            //const SizedBox(height: 5),
            buildMenuItem(
              text: 'Clinics and day services',
              icon: Icons.airline_seat_individual_suite_outlined,
            ),
            //const SizedBox(height: 5),
            buildMenuItem(
              text: 'Appointments and referrals',
              icon: Icons.calendar_today_outlined,
            ),
           // const SizedBox(height: 5),
            buildMenuItem(
              text: 'Emergency Department',
              icon: Icons.healing_outlined,
            ),
            //const SizedBox(height: 5),
            buildMenuItem(
              text: 'Our community',
              icon: Icons.people_outline_rounded,
            ),
            //const SizedBox(height: 5),
            buildMenuItem(
              text: 'My medications',
              icon: Icons.warning_amber_rounded,
            ),
            //const SizedBox(height: 5),
            buildMenuItem(
              text: 'Contact us',
              icon: Icons.contact_phone_outlined,
            ),
            //const SizedBox(height: 3,),
            Divider(color: Colors.white),
           // const SizedBox(height: 3,),
            //const SizedBox(height: 3),
            buildMenuItem(
              text: 'CLOSE',
              icon: Icons.arrow_back_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    String text,
    IconData icon,
   VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}*/

/* DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff405061)),
              curve: Curves.bounceInOut,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 20.0),
                child: Container(
                  color: Color(0xff405061),
                  child: Image.asset('assets/images/SCHHS_white.png'),
                  alignment: Alignment.center,
                ),
              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              // color: Color(0xFF228375),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return AboutPage();
                    }),
                  );
                },
                leading: Icon(Icons.home_outlined, color: Colors.black87),
                title: Text(
                  "About SCHHS",
                  style:
                  Theme.of(context).textTheme.headline4),

                ),
              ),

            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              // color: Color(0xFF3ab2c2),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return FacilitiesPage();
                    }),
                  );
                },
                leading: Icon(Icons.local_hospital_outlined, color: Colors.black87),
                title: Text(
                  "Our facilities",
                    style:
                    Theme.of(context).textTheme.headline4),
              ),
            ), //facilities
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              //color: Color(0xFFc1c1b2),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ClinicsPage();
                    }),
                  );
                },
                leading: Icon(Icons.airline_seat_individual_suite_outlined, color: Colors.black87),
                title: Text(
                  "Clinics and day services",
                    style:
                    Theme.of(context).textTheme.headline4),
              ),
            ), //appoints
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              // color: Color(0xFFf0e28e),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return AppointPage();
                    }),
                  );
                },
                leading:
                    Icon(Icons.calendar_today_outlined, color: Colors.black87),
                title: Text(
                  "Appointments and referrals",
                    style:
                    Theme.of(context).textTheme.headline4),
              ),
            ), //clinics
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              // color: Color(0xFF405061),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return DemPage();
                    }),
                  );
                },
                leading: Icon(Icons.healing_outlined, color: Colors.black87),
                title: Text(
                  "Emergency department",
                    style:
                    Theme.of(context).textTheme.headline4),
              ),
            ), //emergency
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              // color: Colors.deepOrangeAccent,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return CommunityPage();
                    }),
                  );
                },
                leading: Icon(Icons.people_outline_rounded, color: Colors.black87),
                title: Text("Our community",
                 style:
                  Theme.of(context).textTheme.headline4),
                ),
              ),
             //community
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
             // color: Colors.blueGrey,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ContactsPage();
                    }),
                  );
                },
                leading: Icon(Icons.contact_phone_outlined, color: Colors.black87),
                title: Text("Contact us",
                 style:
                 Theme.of(context).textTheme.headline4),),
              ),
             //contact
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
              // color: Colors.blueGrey,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ContactsPage();
                    }),
                  );
                },
                leading: Icon(Icons.warning_amber_rounded, color: Colors.black87),
                title: Text("My medications", style: Theme.of(context).textTheme.headline4),),
              ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Ink(
                child: Container(
                  decoration: const ShapeDecoration(
                      color: Colors.white, shape: CircleBorder()),

                  height: 30.0,
                  width: 30.0,
                  alignment: Alignment.center,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.black,
                      size: 16.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }*/

