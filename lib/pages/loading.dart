import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // * Make the resonse
    Response response = await get(
        Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Colombo'));
    Map data = jsonDecode(response.body);
    // print(data);

    // * get props from data
    String dateTime = data['datetime'];
    String offsetHours = data['utc_offset'].substring(1, 3);
    String offsetMinutes = data['utc_offset'].substring(4);
    // print(dateTime);
    // print(offsetHours);
    // print(offsetMinutes);

    // * Create Date time object
    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offsetHours)));
    now = now.add(Duration(minutes: int.parse(offsetMinutes)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading'),
    );
  }
}
