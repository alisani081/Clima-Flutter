import 'package:geolocator/geolocator.dart';

class Location {
  double longitude;
  double latitude;

  Future<Position> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;
      return position;
    } catch (err) {
      print(err);
    }
  }
}
