import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:geolocator/geolocator.dart';
//import 'package:geocoding/geocoding.dart';

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  late GoogleMapController? mapController;
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation = const LatLng(-26.74642, 153.11369); //location to show in map


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Facility locations"),
        backgroundColor: Color(0xFF3ab2c2),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
        Row(
        children: [
        Container(
        height: MediaQuery.of(context).size.height * 0.75,
        width: MediaQuery.of(context).size.width * 0.98,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0,5.0,20.0,5.0),
          child: GoogleMap( //Map widget from google_maps_flutter package
          zoomGesturesEnabled: true, //enable Zoom in, out on map
          initialCameraPosition: CameraPosition( //initial position in map
            target: showLocation, //initial position
            zoom: 9.0, //initial zoom level
          ),
          markers: getmarkers(), //markers to show on map
          mapType: MapType.normal, //map type
          onMapCreated: (controller) { //method called when map is created
            setState(() {
              mapController = controller;
            });
          },
        ),
      ),
    )
    ]
    )
        ])));
  }

  Set<Marker> getmarkers() { //markers to place on map
    setState(() {
      markers.add(Marker( //add first marker
        markerId: MarkerId(showLocation.toString()),
        position: showLocation, //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Sunshine Coast University Hospital ',
          snippet: 'Birtinya',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add second marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(-26.629045, 152.956467), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Nambour General Hospital ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(-26.1842, 152.6583), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Gympie Hospital',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(-26.8006, 153.1210), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Caloundra Health Service',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(-26.755064, 152.845189), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Maleny Soldiers Memorial Hospital',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(-26.74642, 153.11369), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      //add more markers here
    });

    return markers;
  }




















    /*
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Facility locations'),
          backgroundColor: Color(0xFF3ab2c2),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.75,
                    width: MediaQuery.of(context).size.width * 0.92,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(-26.74642, 153.11369),
                          // target: _center,
                          zoom: 15.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(children: [
                TextButton(
                    child: Text(
                      'Sunshine Coast University Hospital',
                      style: TextStyle(
                        color: Color(0xFF3ab2c2),
                      ),
                    ),
                    onPressed: () {
                    }),
              ],)

            ]),
          ),
        ),
      ),
    );
  }*/
  }


