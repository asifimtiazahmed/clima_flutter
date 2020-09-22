import 'package:geolocator/geolocator.dart';

class Location {

  double longitude;
  double latitude;
  final Duration timeLimit = Duration(seconds: 10);

  Future<void> getCurrentLocation() async {
    print('get current location class method accessed');
    try{
    Position pos = await getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium, timeLimit: this.timeLimit);
    print('Position object created');
    print(pos);
    latitude = pos.latitude;
    longitude = pos.longitude;
    print('done');
    } catch(exception){
      print(exception);
    }
  }
}