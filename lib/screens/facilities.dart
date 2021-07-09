import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:schhs_my_app_v2a/services/ourFacilities.dart';
import './home.dart';

class FacilitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3ab2c2),
        // centerTitle: true,
        title: Text("Our Facilities"),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
                icon: Icon(
                  Icons.info_outline,
                  size: 26.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return OurFacilities();
                    }),
                  );
                }),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding:
            EdgeInsets.only(left: 18, top: 10.0, right: 18.0, bottom: 50.0),
        children: [
          buildImageCard(
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: _ImageTile(
                    imagePath: 'assets/images/scuh.jpg',
                    facilityDesc:
                        'The Sunshine Coast University Hospital (SCUH) at Birtinya commenced services in March 2017, and will expand to a 738-bed facility. SCUH offers a range of new and expanded services for the Sunshine Coast, including the Sunshine Coast Health Institute – a unique partnership for education and research - on site.',
                    facilityName: '    Sunshine Coast University Hospital    ',
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text('View Map', style: TextStyle(color: Color(0xFF3ab2c2),
                      ),
                      ),
                      onPressed: () =>
                          MapsLauncher.launchQuery('6 Doherty Street, Birtinya Qld 4575'),
                    ),
                    TextButton(
                      child: Text('More information', style: TextStyle(color: Color(0xFF3ab2c2),),),
                     onPressed: () {Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                       return OurFacilities();
                     }),
                      );
                      },
                    ),
                    IconButton(
                      // alignment: Alignment.centerRight,
                      icon: Icon(
                        Icons.home_outlined,
                        size: 18.0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          buildImageCard(
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: _ImageTile(
                    imagePath: 'assets/images/ngh.jpg',
                    facilityName: '    Nambour General Hospital    ',
                    facilityDesc:
                        'Nambour General Hospital (NGH) is part of a network of facilities within Sunshine Coast Hospital and Health Service (SCHHS). NGH has a proud history of providing services to the Sunshine Coast community since the 1920s and until recently, was the primary referral centre and largest hospital in the region.',
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text('View Map', style: TextStyle(color: Color(0xFF3ab2c2),
                      ),
                      ),
                      onPressed: () =>
                          MapsLauncher.launchQuery('Hospital Road, Nambour QLD 4560'),
                    ),
                    TextButton(
                      child: Text('More information', style: TextStyle(color: Color(0xFF3ab2c2),),),
                      onPressed: () {Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                        return OurFacilities();
                      }),
                      );
                      },
                    ),
                    IconButton(
                      // alignment: Alignment.centerRight,
                      icon: Icon(
                        Icons.home_outlined,
                        size: 18.0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          buildImageCard(
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: _ImageTile(
                    imagePath: 'assets/images/caloundra.jpg',
                    facilityName: '    Caloundra Health Service    ',
                    facilityDesc:
                        'Caloundra Health Service is the hub for the health services palliative care and ophthalmology services and provides a range of outpatient, ambulatory and community-based services',
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text('View Map', style: TextStyle(color: Color(0xFF3ab2c2),
                      ),
                      ),
                      onPressed: () =>
                          MapsLauncher.launchQuery('West Terrace, Caloundra QLD 4551'),
                    ),
                    TextButton(
                      child: Text('More information', style: TextStyle(color: Color(0xFF3ab2c2),),),
                      onPressed: () {Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                        return OurFacilities();
                      }),
                      );
                      },
                    ),
                    IconButton(
                      // alignment: Alignment.centerRight,
                      icon: Icon(
                        Icons.home_outlined,
                        size: 18.0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          buildImageCard(
            child: Column(
              children: [
                InkWell(
                    onTap: () {},
                    child: _ImageTile(
                      imagePath: 'assets/images/gympie.jpg',
                      facilityName: '    Gympie Hospital    ',
                      facilityDesc:
                          'Gympie Hospital provides acute regional services to residents in the Gympie, Cooloola and Kilkivan areas. Gympie Hospital\'s Maternity and Women\'s Health Unit offers an extended midwifery service to new mums in the Gympie and Cooloola Coast areas. This service is available to all women who have their babies at Gympie as well as women who live in the Gympie area. A four-bed acute stroke unit has been established within the Gympie Hospital.',
                    )),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text('View Map', style: TextStyle(color: Color(0xFF3ab2c2),
                      ),
                      ),
                      onPressed: () =>
                          MapsLauncher.launchQuery('12 Henry St, Gympie QLD 4570'),
                    ),
                    TextButton(
                      child: Text('More information', style: TextStyle(color: Color(0xFF3ab2c2),),),
                      onPressed: () {Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                        return OurFacilities();
                      }),
                      );
                      },
                    ),
                    IconButton(
                      // alignment: Alignment.centerRight,
                      icon: Icon(
                        Icons.home_outlined,
                        size: 18.0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          buildImageCard(
            child: Column(
              children: [
                InkWell(
                    onTap: () {},
                    child: _ImageTile(
                      imagePath: 'assets/images/maleny.jpg',
                      facilityName: '    Maleny Soldiers Memorial Hospital    ',
                      facilityDesc:
                          'Maleny Soldiers Memorial Hospital is a rural facility providing services to the Maleny region, including accident and emergency (24-hours a day, seven days a week on-call).The Maleny Soldiers Memorial Hospital has a fully functional sub-acute rehabilitation unit with a primary focus on patient-centred care and proven excellent track record in patient outcomes.Oral health services are provided by the mobile dental van located at the Maleny Soldiers Memorial Hospital',
                    )),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text('View Map', style: TextStyle(color: Color(0xFF3ab2c2),
                      ),
                      ),
                      onPressed: () =>
                          MapsLauncher.launchQuery('17 Bean St, Maleny QLD 4552'),
                    ),
                    TextButton(
                      child: Text('More information', style: TextStyle(color: Color(0xFF3ab2c2),),),
                      onPressed: () {Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                        return OurFacilities();
                      }),
                      );
                      },
                    ),
                    IconButton(
                      // alignment: Alignment.centerRight,
                      icon: Icon(
                        Icons.home_outlined,
                        size: 18.0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBox({required Widget? child}) => Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF3ab2c2),
        ),
        padding: EdgeInsets.all(8.0),
        child: child,
      );

  Widget buildImageCard({required Widget? child}) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 0.0),
        child: Card(
          elevation: 4.0,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: child,
        ),
      );
}

class ImageTile {}
class _ImageTile extends StatelessWidget {
  final String? imagePath;
  final String? facilityName;
  final String? facilityDesc;

  const _ImageTile({
    required this.imagePath,
    required this.facilityName,
    required this.facilityDesc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          Ink.image(
            image: AssetImage(imagePath!),
            height: 160,
            fit: BoxFit.fill,
          ),
          Positioned(bottom: 2, right: 16, left: 16,
            child: Text(facilityName!, style: TextStyle(
                backgroundColor: Color(0xFF3ab2c2), fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14,),
            ),),],),
      Padding(
        padding: EdgeInsets.all(8).copyWith(bottom: 0),
        child: Text.rich(
          TextSpan(text: facilityDesc), style: TextStyle(
              fontSize: 12, color: Colors.black87, fontFamily: 'Meta'),),),

    ]);
  }
}


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
        ],
      ),
      body: Padding(
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
                  child: Image.asset(
                    "assets/images/ngh.jpg",
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
}
