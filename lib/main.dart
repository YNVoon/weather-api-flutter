import 'package:flutter/material.dart';
import 'package:weather_api/widget/forecast_weather_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather API Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0, 1.0],
            colors: [
              Colors.orange[800],
              Colors.orange[400],
            ],
          ),
        ),
        child: SafeArea(
          top: true,
          bottom: true,
          child: Container(
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  // fit: FlexFit.tight,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 10.0,
                    ),
                    height: 38.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey,
                      //     blurRadius: 5.0,
                      //     offset: Offset(0.0, 3.0),
                      //   ),
                      // ],
                    ),
                    child: TextFormField(
                      controller: searchTextController,
                      onTap: () {},
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.search,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 40,
                          maxHeight: 40,
                        ),
                        border: InputBorder.none,
                        hintText: "Search location",
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.search_outlined,
                              color: Colors.grey,
                              size: 18.0,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(
                            "KUALA LUMPUR",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Icon(
                                  Icons.location_on_outlined,
                                  size: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 5.0),
                                child: Text(
                                  "20.0, -5.0",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  fit: FlexFit.tight,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      "2°c",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Feels like 3°c",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 90.0,
                              child: Image(
                                color: Colors.white,
                                image: AssetImage(
                                  "assets/cloudy.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 40.0),
                          child: Text(
                            "CLOUDY",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Container(
                    // color: Colors.orange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ForecastWeatherWidget(
                                assetUrl: "assets/cloudy.png",
                                dayOfWeek: "Thu",
                                temperature: 32,
                              ),
                              ForecastWeatherWidget(
                                assetUrl: "assets/cloudy.png",
                                dayOfWeek: "Fri",
                                temperature: 32,
                              ),
                              ForecastWeatherWidget(
                                assetUrl: "assets/cloudy.png",
                                dayOfWeek: "Sat",
                                temperature: 32,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Icon(
                                  Icons.more_time_outlined,
                                  size: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 5.0),
                                child: Text(
                                  "Last updated on 4.57pm",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
