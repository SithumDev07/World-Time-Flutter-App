import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    print('build state runs');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose a location'),
        backgroundColor: Colors.blue[900],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {});
        },
        child: Text('get data'),
      ),
    );
  }
}
