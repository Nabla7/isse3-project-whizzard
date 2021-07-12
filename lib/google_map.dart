import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'filter.dart';


class GoogleMapp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<GoogleMapp> {
  late GoogleMapController mapController;
  List<Marker> myMarker = [];
  final LatLng _center = const LatLng(35.01667,135.96667);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          markers: Set.from(myMarker),
          onTap: _handleTap,
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              child: Icon(
                  Icons.delete
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp1()),
                );
              },
              heroTag: null,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              child: Icon(
                  Icons.star
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp1()),
                );
              },
              heroTag: null,
            )
          ]
        )
      ),
    );
  }

  _handleTap(LatLng tappedPoint){
    setState(() {
      myMarker.add(
        Marker(
          markerId: MarkerId(tappedPoint.toString()),
          position: tappedPoint,
        )
      );
    });
  }
}