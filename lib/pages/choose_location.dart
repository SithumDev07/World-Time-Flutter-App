import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    // * Simulate network request for a username
    await Future.delayed(Duration(seconds: 3), () {
      print('Sithum');
    });

    // * Simulate network request for the bio of a username
    Future.delayed(Duration(seconds: 2), () {
      print('Full Stack Developer, Online Entrepreneur');
    });
  }

  @override
  void initState() {
    super.initState();
    print('init state runs');
  }

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
          setState(() {
            getData();
          });
        },
        child: Text('get data'),
      ),
    );
  }
}
