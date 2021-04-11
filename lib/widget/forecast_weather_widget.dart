import 'package:flutter/material.dart';

class ForecastWeatherWidget extends StatefulWidget {
  ForecastWeatherWidget({
    Key key,
    @required this.assetUrl,
    @required this.dayOfWeek,
    @required this.temperature,
  }) : super(key: key);

  final String assetUrl;
  final String dayOfWeek;
  final int temperature;

  @override
  _ForecastWeatherWidgetState createState() => _ForecastWeatherWidgetState();
}

class _ForecastWeatherWidgetState extends State<ForecastWeatherWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    widget.dayOfWeek,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "${widget.temperature}°",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            width: 35.0,
            child: Image(
              color: Colors.white,
              image: AssetImage(
                widget.assetUrl,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
