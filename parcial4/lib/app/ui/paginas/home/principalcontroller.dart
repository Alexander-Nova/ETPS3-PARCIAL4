import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcial4/app/utilities/mapa_style.dart';

class Principalcontroller extends ChangeNotifier{
 
   final initialCameraPosition =
     const CameraPosition(target: LatLng(13.7013266, -89.2244339), zoom: 9.8);

  Map<MarkerId, Marker> _markers = <MarkerId, Marker>{

  };

  Set<Marker> get markers => _markers.values.toSet();

  Principalcontroller();

  void onMapCreated(GoogleMapController controller){
    controller.setMapStyle(mapaEstilo);
  }

  void onTap(LatLng position){
    final markerId = MarkerId(_markers.length.toString());
    final maker = Marker(markerId: markerId, position: position);
    _markers[markerId] = maker;
    notifyListeners();
  }
}