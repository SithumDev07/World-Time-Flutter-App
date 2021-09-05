import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = "Loading";

  void setUpWorldTime() async {
    WordlTime instance = WordlTime(
      location: "Sri Lanka",
      flagURL: "sl.png",
      API_URL: "Asia/Colombo",
    );
    await instance.getTime();
    setState(() {
      time = instance.time.toString();
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}
