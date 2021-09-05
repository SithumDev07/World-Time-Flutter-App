import 'package:http/http.dart';
import 'dart:convert';

class WordlTime {
  String location; // * Location name of the UI
  String? time; // * Time in that location
  String flagURL; // * URL to an asset flag image
  String API_URL; // * Location URL for API endpoint

  WordlTime({
    required this.location,
    required this.flagURL,
    required this.API_URL,
  });

  Future<void> getTime() async {
    // * Make the resonse
    Response response =
        await get(Uri.parse('http://worldtimeapi.org/api/timezone/$API_URL'));
    Map data = jsonDecode(response.body);

    // * get props from data
    String dateTime = data['datetime'];
    String offsetHours = data['utc_offset'].substring(1, 3);
    String offsetMinutes = data['utc_offset'].substring(4);

    // * Create Date time object
    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offsetHours)));
    now = now.add(Duration(minutes: int.parse(offsetMinutes)));

    // * Set the time prop
    time = now.toString();
  }
}
