import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

   @override
  void initState() {
    super.initState();
    print('initState initiated');
    getLocation();
  }

  void getLocation() async {
     Location location = Location();
    await location.getCurrentLocation();
    print('await done waiting');
    print(location.latitude);
     print(location.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is a test'),
      ),
    );
  }
}
