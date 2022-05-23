import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcial4/app/ui/paginas/home/principalcontroller.dart';

class PrincipalPage extends StatefulWidget {
  // PrincipalPage({Key? key}) : super(key: key);

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  final _controller = Principalcontroller();
  List<Marker> allMarkers = [];

  @override
  void initState() {
    _controller.addListener(() {});
    allMarkers.add(Marker(
      markerId: MarkerId("Salvador del mundo"),
      draggable: false,
      onTap: () {},
      position: LatLng(13.7013266, -89.2244339),
      infoWindow: InfoWindow(title: "Local salvador del mundo"),
    ));
    allMarkers.add(Marker(
      markerId: MarkerId("Calle arce"),
      draggable: false,
      onTap: () {},
      position: LatLng(13.6999672,-89.1988465),
      infoWindow: InfoWindow(title: "Local calle arce"),
    ));
    allMarkers.add(Marker(
      markerId: MarkerId("Soyapango"),
      draggable: false,
      onTap: () {},
      position: LatLng(13.6984408, -89.1505769),
      infoWindow: InfoWindow(title: "Local soyapango"),
    ));
    allMarkers.add(Marker(
      markerId: MarkerId("San jacinto"),
      draggable: false,
      onTap: () {},
      position: LatLng(13.9680261, -89.4731628),
      infoWindow: InfoWindow(title: "Local San jacinto"),
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parcial 4"),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GoogleMap(
              // markers: _controller.markers,
              markers: Set.from(allMarkers),
              initialCameraPosition: _controller.initialCameraPosition,
              myLocationButtonEnabled: true,
              onTap: _controller.onTap,
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: InkWell(
          //       child: Container(
          //           height: 40,
          //           width: 40,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(20),
          //             color: Colors.green,
          //           ),
          //           child: Icon(Icons.forward, color: Colors.white))),
          // )
        ],
      ),
    );
  }
}
