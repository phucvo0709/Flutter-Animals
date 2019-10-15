import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animals/router.dart';
import 'package:flutter_animals/utils.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.0,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: ExactAssetImage('assets/daily_life.jpg'),
                    fit: BoxFit.cover,
                  )),
                ),
                AspectRatio(
                  aspectRatio: 3.2,
                  child: Center(
                    child: Text(
                      'Daily Life',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'ManjariBold',
                        color: Color(0xffde5e841).withOpacity(0.85),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AspectRatio(
            aspectRatio: 5.8 / 2,
            child: Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          "You ave the freedom, ability and authority",
                          style: infoTextStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          "to love your life. Just be you, then wait.",
                          style: infoTextStyle,
                        ),
                      ),
                      Text(
                        ' ~ Gangaji ',
                        style: infoTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 7.0,
            child: Center(
              child: Container(
                width: 280.0,
                height: 80.0,
                child: RaisedButton(
                  color: Color(0xff2B55A8).withOpacity(0.95),
                  onPressed: () {
                    Navigator.pushNamed(context, homeViewRoute);
                    SystemChannels.textInput.invokeMethod('TextInput.reload');
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.5,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(roundedcorner),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
