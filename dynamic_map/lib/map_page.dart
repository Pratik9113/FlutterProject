import 'package:dynamic_map/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatelessWidget {
  MapPage({super.key});
  final LatLng tomtomHQ = LatLng(52.379189, 4.900918);
  final String apiKey = '';
  //MYTGdoL8kXWFHiG6GVfZktKFyZSZ104h
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: FlutterMap(
          options: MapOptions(
            initialCenter: const LatLng(52.379189, 4.900918),
            minZoom: 12.0,
            interactionOptions: InteractionOptions(
              flags: InteractiveFlag.all,
              rotationThreshold: 20.0,
              pinchZoomThreshold: 0.5,
              pinchMoveThreshold: 40.0,
            ),
          ),
          mapController: MapController(),
          children: [
            TileLayer(
              urlTemplate:
                  "https://api.tomtom.com/map/1/tile/basic/main/{z}/{x}/{y}.png?key=$apiKey",
              additionalOptions: {},
              userAgentPackageName:
                  'net.tlserver6y.flutter_map_location_marker.example',
              maxZoom: 19,
            ),
            CurrentLocationLayer(),
            Positioned(
              top: 40,
              left: 4,
              right: 4,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: SearchInput(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
