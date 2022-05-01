import 'package:cropdoc_app/theme/app_styles.dart';
import 'package:cropdoc_app/model/forecast.dart';
import 'package:cropdoc_app/model/location.dart';
import 'package:cropdoc_app/utils/bot_icon_icons.dart';
import 'package:cropdoc_app/utils/string_extension.dart';
import 'package:cropdoc_app/views/chat.dart';
import 'package:cropdoc_app/views/sign_in.dart';
import 'package:cropdoc_app/widgets/bot_splash_view.dart';
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
  late String weatherImg;

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
    city = "Loading";
    feels_like = 26.5;
    temp_min = 25.68;
    temp_max = 25.73;
    weatherImg = "assets/images/cloudy.png";
    internetCheck();
    // updateDisplayInfo(widget.weatherData);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Color(0xFFECFFDC),
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
                      top: 30,
                      right: 25,
                      child: IconButton(
                          onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BotSplashScreen()))
                              },
                          icon: Icon(BotIcon.bot_icon,
                              size: 50, color: Colors.white)),
                    ),
                    Positioned(
                      top: 130,
                      left: 0,
                      child: Container(
                        height: 65,
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
                      top: 148,
                      left: 20,
                      child: Text(
                        'Welcome to CropDoc',
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
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(-10, 10),
                      blurRadius: 10,
                      spreadRadius: 1)
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
                                    weatherImg,
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
            SizedBox(height: 60),
            Container(
              margin: const EdgeInsets.only(left: 9),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: h * 0.17,
                    width: w * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: cardColor,
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(4, 4),
                          ),
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(-4, -4),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/card1.png'),
                                    fit: BoxFit.contain))),
                        SizedBox(height: 5),
                        Text(
                          "Capture",
                          style: TextStyle(
                            color: Color(0xFF575E67),
                            fontFamily: 'Raleway',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: h * 0.17,
                    width: w * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: cardColor,
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(4, 4),
                          ),
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(-4, -4),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(
                              top: 25,
                            ),
                            height: 60,
                            width: 55,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/card2.png'),
                                    fit: BoxFit.contain))),
                        SizedBox(height: 10),
                        Text(
                          "Input",
                          style: TextStyle(
                            color: Color(0xFF575E67),
                            fontFamily: 'Raleway',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.17,
                    width: w * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: cardColor,
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(4, 4),
                          ),
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(-4, -4),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            height: 65,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/card3.png'),
                                    fit: BoxFit.contain))),
                        SizedBox(height: 10),
                        Text(
                          "Diagnosis",
                          style: TextStyle(
                            color: Color(0xFF575E67),
                            fontFamily: 'Raleway',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
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
      internetDialog();
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

    if (weatherData.currentCondition == "broken clouds" ||
        weatherData.currentCondition == "overcast clouds") {
      weatherImg = "assets/images/overcast.png";
    } else if (weatherData.currentCondition == "scattered clouds") {
      weatherImg = "assets/images/scatter.png";
    } else if (weatherData.currentCondition == "clear sky") {
      weatherImg = "assets/images/sunny.png";
    } else if (weatherData.currentCondition == "few clouds") {
      weatherImg = "assets/images/cloudy.png";
    } else if (weatherData.currentCondition == "shower rain" ||
        weatherData.currentCondition == "rain" ||
        weatherData.currentCondition == "thunderstorm") {
      weatherImg = "assets/images/rain.png";
    } else {
      weatherImg = "assets/images/cloudy.png";
    }

    updateDisplayInfo(weatherData);
  }

  void internetDialog() async {
    showGeneralDialog(
      context: context,
      barrierLabel: 'label',
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 300),
      transitionBuilder: (context, animation1, animation2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(animation1),
          child: child,
        );
      },
      pageBuilder: (context, animation1, animation2) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            height: 400,
            width: 350,
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Material(
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/no_int.jpg',
                      height: 150,
                    ),
                    Text(
                      'Oops!',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Please connect to a internet connection to experience all of our awesome features  ☺',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Okay  👍',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
