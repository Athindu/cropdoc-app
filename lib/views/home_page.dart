import 'package:cropdoc_app/theme/app_styles.dart';
import 'package:cropdoc_app/model/forecast.dart';
import 'package:cropdoc_app/model/location.dart';
import 'package:cropdoc_app/utils/string_extension.dart';
import 'package:cropdoc_app/views/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final user = FirebaseAuth.instance.currentUser!;

  late LocationHelper locationData;
  late WeatherData weatherData;

  Future<void> getLocationData() async {
    locationData = LocationHelper();
    await locationData.getCurrentLocation();

    if (locationData.latitude == null || locationData.longitude == null) {
      // todo: Handle no location
      locationData.latitude = 6.011049;
      locationData.longitude = 80.5027014;
    }

    print(locationData.longitude);
    print(locationData.latitude);
  }

  late int temperature;
  late String city;
  late double temp_min;
  late double feels_like;
  late String currentCondition;
  late double temp_max;

  void updateDisplayInfo(WeatherData weatherData) {
    setState(() {
      temperature = weatherData.currentTemperature.round();
      city = weatherData.city;
      temp_min = weatherData.temp_min;
      temp_max = weatherData.temp_max;
      feels_like = weatherData.feels_like;
      currentCondition = weatherData.currentCondition.capitalize();
    });
  }

  @override
  void initState() {
    super.initState();
    temperature = 25;
    currentCondition = "Scattered clouds";
    city = "Matara";
    feels_like = 26.5;
    temp_min = 25.68;
    temp_max = 25.73;
    internetCheck();
    // updateDisplayInfo(widget.weatherData);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(children: <Widget>[
      Container(
          height: 230,
          width: w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
            ),
            image: DecorationImage(
                image: AssetImage("assets/images/backdrop.png"),
                fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 35,
                right: 15,
                child: IconButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInPage()))
                        },
                    icon: Icon(Icons.manage_accounts,
                        size: 36, color: Colors.white)),
              ),
              Positioned(
                top: 130,
                left: 0,
                child: Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    color: whiteGrad,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(-10, 22),
                          blurRadius: 2,
                          spreadRadius: -10),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 20,
                child: Text(
                  "Welcome to CropDoc",
                  style: TextStyle(
                    color: gradColor1,
                    fontSize: 25,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w900,
                    shadows: [
                      Shadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(3, 3),
                          blurRadius: 10),
                    ],
                  ),
                ),
              ),
            ],
          )),
      SizedBox(height: 25),
      Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        width: w,
        height: h * 0.25,
        decoration: BoxDecoration(
          //color: createMaterialColor(Color(0xFF329760)),
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
              colors: [gradColor1, gradColor2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                offset: Offset(-10, 10),
                blurRadius: 15,
                spreadRadius: 10)
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  //Icon
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/cloudy.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                  //Image.asset('assets/icons/02d.png', width: 70, height:70),
                  Container(
                    margin: const EdgeInsets.only(left: 30, top: 10),
                    //margin: const EdgeInsets.all(5),
                    child: Text('$currentCondition',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors.white,
                        )),
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 32, top: 5),
                    child: Text('H: $temp_max°C  |  L: $temp_min°C',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(right: 12, top: 5),
                  child: Text(' $temperature°',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.white,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 30, top: 5),
                  child: Text('Feels like $feels_like°C',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        color: Colors.white,
                      )),
                ),
                SizedBox(height: 30),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Text('$city',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    ]));
  }

  void internetCheck() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result == true) {
      print('Internet available');
      getWeatherData();
    } else {
      print('No internet :( Reason:');
      await getLocationData();
      weatherData = WeatherData(locationData: locationData);
      weatherData.getNormalWeather();

      print(weatherData.currentTemperature);
      print(weatherData.currentCondition);
      print(weatherData.city);
      print(weatherData.feels_like);
      print(weatherData.temp_min);
    }
  }

  void getWeatherData() async {
    // Fetch the location

    await getLocationData();
    // Fetch the current weather
    weatherData = WeatherData(locationData: locationData);
    //print(weatherData.currentTemperature);
    await weatherData.getCurrentTemperature();
    if (weatherData.currentTemperature == null ||
        weatherData.currentCondition == null ||
        weatherData.city == null ||
        weatherData.feels_like == null ||
        weatherData.temp_min == null) {
      // todo: Handle no weather

    }

    print(weatherData.currentTemperature);
    print(weatherData.currentCondition);
    print(weatherData.city);
    print(weatherData.feels_like);
    print(weatherData.temp_min);

    updateDisplayInfo(weatherData);
  }
}
