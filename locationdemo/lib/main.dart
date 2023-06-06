import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_)=>getlocation(),child: MaterialApp(
      home:designpage(),
    ),);
  }
}


class designpage extends StatelessWidget {
  const designpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String newAddress=Provider.of<getlocation>(context).Address;
    return Container(height: 500,width: 500,color: Colors.green,

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () async {
              Position position=await Provider.of<getlocation>(context)._determinePosition();
              print(position.latitude);
              Provider.of<getlocation>(context).GetAdderssFromLatLong(position);
              print('$newAddress');




            }, child: Text('Get Address'))



          ],
        ),
      ),
    );
  }
}

class getlocation with ChangeNotifier {

  var Address;
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;


    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also whereg
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Future<void> GetAdderssFromLatLong(Position position)async {

    List<Placemark> placemark= await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemark);
    Placemark place=placemark[0];
    Address='${place.street},${place.subLocality} ${place.postalCode},${place.country}';
    setState((){});


  }

}
